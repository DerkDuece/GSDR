-- Variables
QBCore = exports['qbx-core']:GetCoreObject()
cuffType = 1
isEscorted = false
PlayerData = QBCore.Functions.GetPlayerData() or {}
IsLoggedIn = LocalPlayer.state.isLoggedIn
local DutyBlips = {}

-- Functions
local function CreateDutyBlips(playerId, playerLabel, playerJob, playerLocation)
    local ped = GetPlayerPed(playerId)
    local blip = GetBlipFromEntity(ped)
    if not DoesBlipExist(blip) then
        if NetworkIsPlayerActive(playerId) then
            blip = AddBlipForEntity(ped)
        else
            blip = AddBlipForCoord(playerLocation.x, playerLocation.y, playerLocation.z)
        end
        SetBlipSprite(blip, 1)
        ShowHeadingIndicatorOnBlip(blip, true)
        SetBlipRotation(blip, math.ceil(playerLocation.w))
        SetBlipScale(blip, 1.0)
        if playerJob == "police" then
            SetBlipColour(blip, 38)
        else
            SetBlipColour(blip, 5)
        end
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString(playerLabel)
        EndTextCommandSetBlipName(blip)
        DutyBlips[#DutyBlips+1] = blip
    end

    if GetBlipFromEntity(cache.ped) == blip then
        -- Ensure we remove our own blip.
        RemoveBlip(blip)
    end
end

-- Events
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()

    TriggerServerEvent("police:server:SetHandcuffStatus", false)
    TriggerServerEvent("police:server:UpdateCurrentCops")

    local trackerClothingData = {}

    if PlayerData.metadata.tracker then
        trackerClothingData.outfitData = {
            accessory = {
                item = 13,
                texture = 0
            }
        }
    else
        trackerClothingData.outfitData = {
            accessory = {
                item = -1,
                texture = 0
            }
        }
    end

    TriggerEvent('qb-clothing:client:loadOutfit', trackerClothingData)

    if PlayerData.job and PlayerData.job.type ~= "leo" then
        if DutyBlips then
            for _, v in pairs(DutyBlips) do
                RemoveBlip(v)
            end
        end
        DutyBlips = {}
    end

    IsLoggedIn = true
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    TriggerServerEvent("police:server:SetHandcuffStatus", false)
    TriggerServerEvent("police:server:UpdateCurrentCops")
    isEscorted = false
    ClearPedTasks(cache.ped)
    DetachEntity(cache.ped, true, false)
    if DutyBlips then
        for _, v in pairs(DutyBlips) do
            RemoveBlip(v)
        end
        DutyBlips = {}
    end
    IsLoggedIn = false
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    if JobInfo.type == "leo" and PlayerData.job.type ~= "leo" then
        if JobInfo.onduty then
            TriggerEvent('qb-policejob:ToggleDuty')
        end
    end

    if JobInfo.type ~= "leo" then
        if DutyBlips then
            for _, v in pairs(DutyBlips) do
                RemoveBlip(v)
            end
        end
        DutyBlips = {}
    end
    PlayerData.job = JobInfo
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(val)
    -- Make sure it can only be triggered from the server
    if GetInvokingResource() then return end
    PlayerData = val
end)

RegisterNetEvent('police:client:sendBillingMail', function(amount)
    SetTimeout(math.random(2500, 4000), function()
        local gender = Lang:t('info.mr')
        if PlayerData.charinfo.gender == 1 then
            gender = Lang:t('info.mrs')
        end
        local charinfo = PlayerData.charinfo
        TriggerServerEvent('qb-phone:server:sendNewMail', {
            sender = Lang:t('email.sender'),
            subject = Lang:t('email.subject'),
            message = Lang:t('email.message', {value = gender, value2 = charinfo.lastname, value3 = amount}),
            button = {}
        })
    end)
end)

RegisterNetEvent('police:client:UpdateBlips', function(players)
    if PlayerData.job and (PlayerData.job.type == 'leo' or PlayerData.job.name == 'ambulance') and PlayerData.job.onduty then
        if DutyBlips then
            for _, v in pairs(DutyBlips) do
                RemoveBlip(v)
            end
        end
        DutyBlips = {}
        if players then
            for _, data in pairs(players) do
                local id = GetPlayerFromServerId(data.source)
                CreateDutyBlips(id, data.label, data.job, data.location)
            end
        end
    end
end)

RegisterNetEvent('police:client:policeAlert', function(coords, text)
    local street1, street2 = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
    local street1name = GetStreetNameFromHashKey(street1)
    local street2name = GetStreetNameFromHashKey(street2)
    lib.notify({ title = text, description = street1name.. ' ' ..street2name, type = 'inform' })
    PlaySound(-1, "Lose_1st", "GTAO_FM_Events_Soundset", false, 0, true)
    local transG = 250
    local blip = AddBlipForCoord(coords.x, coords.y, coords.z)
    local blip2 = AddBlipForCoord(coords.x, coords.y, coords.z)
    local blipText = Lang:t('info.blip_text', {value = text})
    SetBlipSprite(blip, 60)
    SetBlipSprite(blip2, 161)
    SetBlipColour(blip, 1)
    SetBlipColour(blip2, 1)
    SetBlipDisplay(blip, 4)
    SetBlipDisplay(blip2, 8)
    SetBlipAlpha(blip, transG)
    SetBlipAlpha(blip2, transG)
    SetBlipScale(blip, 0.8)
    SetBlipScale(blip2, 2.0)
    SetBlipAsShortRange(blip, false)
    SetBlipAsShortRange(blip2, false)
    PulseBlip(blip2)
    BeginTextCommandSetBlipName('STRING')
    AddTextComponentString(blipText)
    EndTextCommandSetBlipName(blip)
    while transG ~= 0 do
        Wait(180 * 4)
        transG -= 1
        SetBlipAlpha(blip, transG)
        SetBlipAlpha(blip2, transG)
        if transG == 0 then
            RemoveBlip(blip)
            return
        end
    end
end)

RegisterNetEvent('police:client:SendToJail', function(time)
    TriggerServerEvent("police:server:SetHandcuffStatus", false)
    isEscorted = false
    ClearPedTasks(cache.ped)
    DetachEntity(cache.ped, true, false)
    TriggerEvent("prison:client:Enter", time)
end)

RegisterNetEvent('police:client:SendPoliceEmergencyAlert', function()
    TriggerServerEvent('police:server:policeAlert', Lang:t('info.officer_down', {lastname = PlayerData.charinfo.lastname, callsign = PlayerData.metadata.callsign}))
    TriggerServerEvent('hospital:server:ambulanceAlert', Lang:t('info.officer_down', {lastname = PlayerData.charinfo.lastname, callsign = PlayerData.metadata.callsign}))
end)

-- Threads
CreateThread(function()
    for _, station in pairs(Config.Locations.stations) do
        local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
        SetBlipSprite(blip, 60)
        SetBlipAsShortRange(blip, true)
        SetBlipScale(blip, 0.8)
        SetBlipColour(blip, 29)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(station.label)
        EndTextCommandSetBlipName(blip)
    end
end)
