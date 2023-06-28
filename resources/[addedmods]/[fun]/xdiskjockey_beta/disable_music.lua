function SetVanillaMusicStatus(bool)
    SetStaticEmitterEnabled('LOS_SANTOS_VANILLA_UNICORN_01_STAGE', bool)
    SetStaticEmitterEnabled('LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM', bool)
    SetStaticEmitterEnabled('LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM', bool)
end

function SetGalaxyMusicStatus(bool)
    SetStaticEmitterEnabled("SE_ba_dlc_club_exterior", bool)
    SetStaticEmitterEnabled("SE_ba_dlc_int_01_Bogs", bool)
    SetStaticEmitterEnabled("SE_ba_dlc_int_01_Entry_Hall", bool)
    SetStaticEmitterEnabled("SE_ba_dlc_int_01_Entry_Stairs", bool)
    SetStaticEmitterEnabled("SE_ba_dlc_int_01_garage", bool)
    SetStaticEmitterEnabled("SE_ba_dlc_int_01_main_area", bool)
    SetStaticEmitterEnabled("SE_ba_dlc_int_01_main_area_2", bool)
    SetStaticEmitterEnabled("SE_ba_dlc_int_01_office", bool)
    SetStaticEmitterEnabled("SE_ba_dlc_int_01_rear_L_corridor", bool)
end

function CheckStatusVanillaMusic(identifier, status)
    Wait(100)
    if not identifier then
        return
    end
    local mixerData = Config.MixerList[identifier]
    for k, v in pairs(mixerData.speaker) do

        if #(v.pos - vector3(-1603.39, -3012.6, -77.79)) < 50 then
            if status == "play" then
                SetGalaxyMusicStatus(false)
            end

            if status == "stop" then
                if tableLenght(ActiveMusicCache[identifier] or {}) == 0 then
                    SetGalaxyMusicStatus(true)
                end
            end
        end

        if #(v.pos - vector3(111.71, -1287.03, 29.04)) < 50 then
            if status == "play" then
                SetVanillaMusicStatus(false)
            end

            if status == "stop" then
                if tableLenght(ActiveMusicCache[identifier] or {}) == 0 then
                    SetVanillaMusicStatus(true)
                end
            end
        end
    end
end

AddEventHandler("xdiskjockey:localCheckMusicStatus", CheckStatusVanillaMusic)

RegisterNetEvent("xdiskjockey:sendMusicStatus", function(status, data)
    CheckStatusVanillaMusic(data.Identifier, status)
end)

RegisterNetEvent("xdiskjockey:stopAllMusic", function(mixer, queMusic)
    CheckStatusVanillaMusic(mixer, "stop")
end)

RegisterNetEvent("xdiskjockey:stopAllQueMusic", function(mixer, queMusic)
    CheckStatusVanillaMusic(mixer, "stop")
end)