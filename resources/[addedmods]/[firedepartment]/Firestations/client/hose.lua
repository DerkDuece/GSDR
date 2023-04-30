-- Core export
local QBCore = exports['qb-core']:GetCoreObject()

local dict = "core"
local particle = "water_cannon_jet"
local ped = nil

local x, y, z = nil
local xx, yy, zz = nil

local ActiveEffects = {}
local hoseNozzle = nil
local pressed = false


local IsPlayerConnected = false 
local ConnectedHyID = nil

local hasFireHose = false
local FireHoseAmmo = 0
--local weaponHash = GetHashKey("WEAPON_HOSE")
local weaponHash = GetHashKey("WEAPON_FIREHOSE")

if GetResourceState("firehose") == "started" then
    if Config.MYHose == true then
    print("You have the Config.MYHose on true")
    end
    print("You have the firehose started")
end

if Config.MYHose == true then
    RegisterNetEvent("qb-Firestations:hose", function()
        local playerPed = PlayerPedId()
        if IsPlayerConnected then
            if HasPedGotWeapon(playerPed, weaponHash, false) then
                SetCurrentPedWeapon(playerPed, weaponHash, true)
                hasExtinguisher = true
                hashoseNozzle = true
                extinguisherAmmo = GetAmmoInPedWeapon(playerPed, weaponHash)
            else
                GiveWeaponToPed(playerPed, weaponHash, 2000, true, true)
            end
            hoseNozzle = CreateObject(GetHashKey('prop_fire_hose'), 0, 0, 0, true, true, true)
            AttachEntityToEntity(hoseNozzle, playerPed, GetPedBoneIndex(playerPed, 57005), 0.12, 0.14, -0.03, 20.0, 260.0, 70.0, true, false, false, true, 1, true)
          
            if hashoseNozzle then
                hashoseNozzle = false
                DeleteEntity(hoseNozzle)
                hoseNozzle = nil
                SetPedCurrentWeaponVisible(playerPed, true, false, false, false)
                SetCurrentPedWeapon(playerPed, GetHashKey('WEAPON_UNARMED'), true)
                QBCore.Functions.Notify(Lang:t('info.hose_back'), 'success')
            end
            if hasExtinguisher then
                hasExtinguisher = false
                SetPedAmmo(playerPed, weaponHash, extinguisherAmmo)
                extinguisherAmmo = 0
                if IsPlayerConnected then
                    RemoveWeaponFromPed(playerPed, weaponHash)
                else
                    QBCore.Functions.Notify(Lang:t('error.Not_Connected'), 'error')
                    RemoveWeaponFromPed(playerPed, weaponHash)
                end
            end
        else
            QBCore.Functions.Notify(Lang:t('error.Not_Connected'), 'error')
        end
    end)

    RegisterNetEvent('qb-Firestations:Disconnect')
    AddEventHandler('qb-Firestations:Disconnect', function()
        local ped = PlayerPedId()
        local check = GetHashKey("weapon_wrench") -- change tool
        local haswrench = HasPedGotWeapon(ped, check, false)

        if IsPlayerConnected then
            if haswrench then
                TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                QBCore.Functions.Progressbar("close_hydrant", Lang:t("progressbar.close_hydrant"), 6500, false, true, {
                    disableMovement = true,
                    disableCarMovement = true,
                    disableMouse = false,
                    disableCombat = true,
                }, {}, {}, {}, function() -- Done
                    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                    QBCore.Functions.Notify(Lang:t('error.Disconnected'), 'success')
                end)
            else
                QBCore.Functions.Notify(Lang:t('info.Right_Tool'), 'error')
            end

            IsPlayerConnected = false
            ConnectedHyID = nil
        else
            QBCore.Functions.Notify(Lang:t('error.Not_Connected'), 'error')
        end
    end)

    RegisterNetEvent('qb-Firestations:Connect')
    AddEventHandler('qb-Firestations:Connect', function()
        local ped = PlayerPedId()
        local check = GetHashKey("weapon_wrench") -- change tool
        local haswrench = HasPedGotWeapon(ped, check, false)
        local pos = GetEntityCoords(ped)
        local veh = QBCore.Functions.GetClosestVehicle(pos)
        local vehpos = GetEntityCoords(veh)  
        
        if veh ~= nil and #(pos - vehpos) < 30.0 then
            if IsPlayerConnected then
                QBCore.Functions.Notify(Lang:t('error.connected'), 'error')
            else
                if haswrench then
                    TriggerEvent('animations:client:EmoteCommandStart', {"mechanic"})
                    QBCore.Functions.Progressbar("open_hydrant", Lang:t("progressbar.open_hydrant"), 6500, false, true, {
                        disableMovement = true,
                        disableCarMovement = true,
                        disableMouse = false,
                        disableCombat = true,
                    }, {}, {}, {}, function() -- Done
                        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
                        QBCore.Functions.Notify(Lang:t('success.Is_Connected'), 'success')
                    end)

                    local hydrant = GetClosestObjectOfType(GetEntityCoords(PlayerPedId()))
            
                    local hydrantModel = GetEntityModel(hydrant)

                    local hydrantNetworkID = NetworkGetNetworkIdFromEntity(hydrant)

                    IsPlayerConnected = true
                    ConnectedHyID = hydrantNetworkID
                else
                    QBCore.Functions.Notify(Lang:t('info.Right_Tool'), 'error')
                end
            end
        else
            QBCore.Functions.Notify(Lang:t('info.Too_far'), 'error')
        end
    end)

    CreateThread(function()
        exports['qb-target']:AddTargetModel(Config.hydrant, {
            options = {
                {
                    type = 'client',
                    event = 'qb-Firestations:Connect',
                    icon = 'fas fa-fire-extinguisher',
                    label = Lang:t('target.Connect'),
                    job = Config.JobName,
                },
                {
                    type = 'client',
                    event = 'qb-Firestations:Disconnect',
                    icon = 'fas fa-fire-extinguisher',
                    label = Lang:t('target.Disconnect'),
                    job = Config.JobName,
                }
            },
            distance = 2.5
        })
        ---Firehose menu in Vehicles--
        exports['qb-target']:AddTargetModel(Config.Vehicles, {
            options = {
          { 
              type = "client",
              event = "qb-Firestations:hose",
              icon = "fas fa-fire-extinguisher",
              label = "Water Variant",
              job = Config.JobName,
          }
            },
            distance = 2.5,
        })
    end)

    Citizen.CreateThread(function()
        RequestNamedPtfxAsset(dict)

        while not HasNamedPtfxAssetLoaded(dict) do
            Citizen.Wait(0)
        end
            
        while true do
            Citizen.Wait(1)
            if hoseNozzle then
                if pressed then
                    Citizen.Wait(100)
                    SetParticleFxShootoutBoat(true)
                    local entity = GetCurrentPedWeaponEntityIndex(ped)
                    local multiplier = GetGameplayCamRelativePitch(ped) - GetEntityPitch(entity)
                    local distance = 10
                    if multiplier < 0 then
                        distance = distance + (-9 * (multiplier / -52.0))
                    elseif multiplier >= 0 and multiplier < 15 then
                        distance = distance + (10 * multiplier / 15)
                    else
                        distance = distance + (-9 * (multiplier - 15) / 45)
                    end
                    local off = GetOffsetFromEntityInWorldCoords(
                        entity,
                        distance,
                        -0.5,
                        0.0
                    )
                    local x = off.x
                    local y = off.y
                    local offZ = off.z

                    if offZ > GetEntityCoords(entity).z then
                        offZ = off.z - 2.0
                    end

                    local _, z = GetGroundZFor_3dCoord(x, y, offZ)
                    Citizen.Wait(distance * 10)
                    PlayEffect("core", "water_cannon_spray", x, y, z)
                else
                    Citizen.Wait(0)
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        local particleEffect = 0

        while true do
            Citizen.Wait(1)
            if hoseNozzle then
                if ped == nil then
                    ped = PlayerPedId()
                end
                local selectedWeapon = GetSelectedPedWeapon(ped)
                if selectedWeapon == weaponHash and (IsControlJustPressed(0, 24) or IsDisabledControlPressed(0, 24)) and not pressed then
                    ped = PlayerPedId()
                    pressed = true
                    UseParticleFxAssetNextCall(dict)
                    particleEffect = StartParticleFxLoopedOnEntity(
                        particle,
                        GetCurrentPedWeaponEntityIndex(ped),
                        0.30, 
                        -0.02, 
                        -0.33,
                        0.0,
                        0.0,
                        -90.0,
                        1.0,
                        false,
                        false,
                        false
                    )
                    TriggerServerEvent('qb-firejob:hose:startParticleEffect')
                end
                
                if selectedWeapon == weaponHash then
                    DisablePlayerFiring(PlayerId(), true)
                    DisableControlAction(0, 24, true)
                    if pressed then
                        SetParticleFxLoopedOffsets(
                            particleEffect,
                            0.30, 
                            -0.02, 
                            -0.33,
                            -25.0,
                            0.0,
                            -90.0
                        )
                    end
                end

                if (IsControlJustReleased(0, 24) or IsDisabledControlJustReleased(0, 24)) and pressed then
                    StopParticleFxLooped(particleEffect, 0)
                    pressed = false
                    TriggerServerEvent('qb-Firestations:stopParticleEffect')
                end
                if selectedWeapon ~= weaponHash and hoseNozzle then
                    TriggerEvent('qb-Firestations:hose')
                end
            end
        end
    end)

    RegisterNetEvent('qb-Firestations:stopParticleEffect', function(playerId)
        local playerPed = GetPlayerPed(GetPlayerFromServerId(playerId))
        if playerPed ~= PlayerPedId() then
            if ActiveEffects[playerPed] then
                StopParticleFxLooped(ActiveEffects[playerPed], 0)
            end
        end
    end)

    RegisterNetEvent('qb-Firestations:startParticleEffect',function(playerId)
        local playerPed = GetPlayerPed(GetPlayerFromServerId(playerId))
        if playerPed ~= PlayerPedId() and playerPed ~= 0 then
            UseParticleFxAssetNextCall(dict)
            ActiveEffects[playerPed] = StartParticleFxLoopedOnEntity(
                particle,
                GetCurrentPedWeaponEntityIndex(playerPed),
                0.30, 
                -0.02, 
                -0.33,
                -25.0,
                0.0,
                -90.0,
                1.0,
                false,
                false,
                false
            )
        end
    end)

    Citizen.CreateThread(function()
        Citizen.Wait(1)
        for k, v in pairs(ActiveEffects) do
            UseParticleFxAssetNextCall(dict)
            ActiveEffects[k] = StartParticleFxLoopedOnEntity(
                particle,
                GetCurrentPedWeaponEntityIndex(k),
                0.0,
                0.0,
                0.0,
                0.1,
                0.0,
                0.0,
                1.0,
                false,
                false,
                false
            )
        end
    end)

    function PlayEffect(pdict, pname, posx, posy, posz)
        Citizen.CreateThread(function()
            UseParticleFxAssetNextCall(pdict)
            local pfx = StartParticleFxLoopedAtCoord(
                pname,
                posx,
                posy,
                posz,
                0.0,
                0.0,
                GetEntityHeading(PlayerPedId()),
                1.0,
                false,
                false,
                false,
                false
            )
            Citizen.Wait(100)
            StopParticleFxLooped(pfx, 0)
        end)
    end
end