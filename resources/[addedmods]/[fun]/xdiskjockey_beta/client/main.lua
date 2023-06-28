function OpenDiskjockeyUI()
    SendNUIMessage({ type = "ui", visible = "mixer", effects = Config.WorldEffects[ActiveMixer.identifier] ~= nil })
    if ActiveMixer.isPlayerMixer then
        SendNUIMessage({ type = "booth_name", name = GetPlayerName(PlayerId()) })
        else
        SendNUIMessage({ type = "booth_name", name = ActiveMixer.identifier })
    end

    if Config.WorldEffects[ActiveMixer.identifier] then
        local list = {}
        for k, v in pairs(Config.WorldEffects[ActiveMixer.identifier].effects) do
            local active = false
            if CacheEffects[ActiveMixer.identifier] then
                if v.identifier then
                    if CacheEffects[ActiveMixer.identifier][v.identifier] then
                        active = CacheEffects[ActiveMixer.identifier][v.identifier]
                    end
                else
                    if CacheEffects[ActiveMixer.identifier][v.name] then
                        active = CacheEffects[ActiveMixer.identifier][v.name]
                    end
                end
            end

            if TimerEffectsCache[ActiveMixer.identifier] then
                if v.identifier then
                    if TimerEffectsCache[ActiveMixer.identifier][v.identifier] then
                        active = TimerEffectsCache[ActiveMixer.identifier][v.identifier]
                    end
                else
                    if TimerEffectsCache[ActiveMixer.identifier][v.name] then
                        active = TimerEffectsCache[ActiveMixer.identifier][v.name]
                    end
                end
            end

            table.insert(list, { name = v.name, activeName = active or "none", label = v.label, active = active, button = v.ButtonType, identifier = v.identifier })
        end
        SendNUIMessage({ type = "fx_effects", list = list })
    end

    SetNuiFocus(true, true)

    TriggerServerEvent("xdiskjockey:isQuePlaying", ActiveMixer.identifier)
    TriggerServerEvent("xdiskjockey:fetchMixerPlayListCache", ActiveMixer.identifier)
    TriggerServerEvent("xdiskjockey:IsInMixer", true, ActiveMixer.identifier)

    if ActiveMixer.teleportPlayer then
        local ped = PlayerPedId()
        SetEntityCoordsNoOffset(ped, ActiveMixer.teleportPlayer.pos)
        SetEntityHeading(ped, ActiveMixer.teleportPlayer.heading)

        RequestAnimDict(ActiveMixer.teleportPlayer.animDict)
        local breakMe = 0
        while not HasAnimDictLoaded(ActiveMixer.teleportPlayer.animDict) do
            Wait(33)
            breakMe = breakMe + 1
            if breakMe == 20 then
                return
            end
        end

        TaskPlayAnim(ped, ActiveMixer.teleportPlayer.animDict, ActiveMixer.teleportPlayer.animClip, 2.0, 2.0, -1, 51, 0, false, false, false)
        RemoveAnimDict(ActiveMixer.teleportPlayer.animDict)
    end
end

function HideDiskjockeyUI()
    if ActiveMixer then
        TriggerServerEvent("xdiskjockey:IsInMixer", false, ActiveMixer.identifier)
        ClearPedTasks(PlayerPedId())
    end

    ActiveMixer = nil
    SendNUIMessage({ type = "ui", visible = "none" })
    SetNuiFocus(false, false)
end

function IsActiveMixerValid()
    local mixer = ActiveMixer
    if not mixer then
        return false
    end
    if not mixer.identifier then
        return false
    end
    if not Config.MixerList[mixer.identifier] then
        return false
    end
    return true
end

RegisterNetEvent("xdiskjockey:currentQueueMusic", function(data)
    SendNUIMessage({
        type = "queueCurrent",
        currentPlayingQue = data,
    })
end)

RegisterNetEvent("xdiskjockey:fetchMixerPlayListCache", function(data, categories, volume)
    local newData = {}

    if data then
        for k, v in pairs(data) do
            table.insert(newData, {
                Visible = true,
                Active = v.Active,
                Loop = v.Loop,
                Name = v.name,
                Volume = v.Volume,
                URL = v.url,
                time = v.time,
                Category = v.category,
                Que = v.Que,
                pulseInfo = v.pulseInfo,
                stereoInfo = v.stereoInfo,
            })
        end

        SendNUIMessage({ type = "playlist", playList = newData, categoriesDropDown = categories, volume = volume * 100 })
    end
end)

exports("OpenDiskjockeyUI", function()
    ExecuteCommand("opendiskjockeyui" .. Config.KeyToOpen)
end)

RegisterNetEvent("xdiskjockey:openMixer", function()
    ExecuteCommand("opendiskjockeyui" .. Config.KeyToOpen)
end)

RegisterNetEvent("xdiskjockey:isQuePlaying", function(status)
    SendNUIMessage({ type = "quePlaying", status = status })
end)

if Config.Debug then
    -- Will draw 3D text
    --- @param position vector3
    --- @param scale float
    --- @param size float
    --- @param color table
    --- @param text string
    function Render3DText(position, scale, size, color, text)
        SetDrawOrigin(position.x, position.y, position.z, 0)
        SetTextScale(scale, size)
        SetTextColour(color.r, color.g, color.b, color.a)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(0.0, 0.0)
        ClearDrawOrigin()
    end

    CreateThread(function()
        while true do
            Wait(0)
            local pos = GetEntityCoords(PlayerPedId())
            for identifier, v in pairs(Config.MixerList) do
                for key, val in pairs(v.speaker) do
                    if #(pos - val.pos) < val.distance + 50 then
                        Render3DText(val.pos, 0.4, 0.4, { r = 255, g = 255, b = 255, a = 255 }, "Center of speaker")
                        DrawSphere(val.pos.x, val.pos.y, val.pos.z, val.distance, 255, 0, 0, 0.2)
                    end
                end
            end
        end
    end)
end