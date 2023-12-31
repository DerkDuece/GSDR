--[[ ===================================================== ]]--
--[[        QBCore Driving Teacher Job by MaDHouSe         ]]--
--[[ ===================================================== ]]--

local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = {}
local PlayerJob = {}
local onDuty = false
local currentTestDriving = false
local currentStudentID = nil
local currentDriveTest = nil
local currentVehicle = nil
local currenVehicleName = nil
local currentPlate = nil
local inDuty

local function SetFuel(vehicle, fuel)
    if type(fuel) == 'number' and fuel >= 0 and fuel <= 100 then
        SetVehicleFuelLevel(vehicle, fuel + 0.0)
	DecorSetFloat(vehicle, "_FUEL_LEVEL", GetVehicleFuelLevel(vehicle))
    end
end

local function SpawnAirplane(licence)
    local coords = GetEntityCoords(PlayerPedId())
    local heading = GetEntityHeading(coords)
    local tmpSpawnPosition = vector3(coords.x + 5.0, coords.y + 1.0, coords.z)
    if not QBCore.Functions.SpawnClear(tmpSpawnPosition, 5.0) then
        QBCore.Functions.Notify(Lang:t('error.area_is_obstructed'), 'error', 5000)
	return
    else
        QBCore.Functions.SpawnVehicle(Config.VehicleModels[licence], function(_vehicle)
            vehicle = _vehicle
            local plate = 'TL' .. string.format('%06d', math.random(1, 999999))
            currentVehicle = vehicle
            currentPlate = plate
            currenVehicleName = Config.VehicleModels[licence]
            SetVehicleNumberPlateText(vehicle, plate)
            SetEntityHeading(vehicle, heading)
            SetFuel(vehicle, 100.0)
            SetVehicleOnGroundProperly(vehicle)
            TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehicleBodyHealth(vehicle, 1000.0)
            SetVehicleCustomPrimaryColour(vehicle, 0, 0, 0)
            SetVehicleDirtLevel(vehicle, 0)
            SetVehicleUndriveable(vehicle, false)
            WashDecalsFromVehicle(vehicle, 1.0)
            SetVehRadioStation(vehicle, 'OFF')
            TriggerEvent('qb-drivingteacherjob:client:giveKeys', plate)
        end, vector3(tmpSpawnPosition.x, tmpSpawnPosition.y, tmpSpawnPosition.z + 1.0), true)
    end
end

local function SpawnHelikoper(licence)
    local coords = GetEntityCoords(PlayerPedId())
    local heading = GetEntityHeading(coords)
    local tmpSpawnPosition = vector3(coords.x + 5.0, coords.y + 1.0, coords.z)
    if not QBCore.Functions.SpawnClear(tmpSpawnPosition, 5.0) then
        QBCore.Functions.Notify(Lang:t('error.area_is_obstructed'), 'error', 5000)
	return
    else
        QBCore.Functions.SpawnVehicle(Config.VehicleModels[licence], function(_vehicle)
            vehicle = _vehicle
            local plate = 'TL' .. string.format('%06d', math.random(1, 999999))
            currentVehicle = vehicle
            currentPlate = plate
            currenVehicleName = Config.VehicleModels[licence]
            SetVehicleNumberPlateText(vehicle, plate)
            SetEntityHeading(vehicle, heading)
            SetFuel(vehicle, 100.0)
            SetVehicleOnGroundProperly(vehicle)
            TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehicleBodyHealth(vehicle, 1000.0)
            SetVehicleCustomPrimaryColour(vehicle, 0, 0, 0)
            SetVehicleDirtLevel(vehicle, 0)
            SetVehicleUndriveable(vehicle, false)
            WashDecalsFromVehicle(vehicle, 1.0)
            SetVehRadioStation(vehicle, 'OFF')
            TriggerEvent('qb-drivingteacherjob:client:giveKeys', plate)
        end, vector3(tmpSpawnPosition.x, tmpSpawnPosition.y, tmpSpawnPosition.z + 1.0), true)
    end
end

local function SpawnBoat(licence)
    local coords = GetEntityCoords(PlayerPedId())
    local heading = GetEntityHeading(coords)
    local tmpSpawnPosition = vector3(coords.x + 5.0, coords.y + 1.0, coords.z)
    if not QBCore.Functions.SpawnClear(tmpSpawnPosition, 5.0) then
        QBCore.Functions.Notify(Lang:t('error.area_is_obstructed'), 'error', 5000)
	return
    else
        QBCore.Functions.SpawnVehicle(Config.VehicleModels[licence], function(_vehicle)
            vehicle = _vehicle
            local plate = 'TL' .. string.format('%06d', math.random(1, 999999))
            currentVehicle = vehicle
            currentPlate = plate
            currenVehicleName = Config.VehicleModels[licence]
            SetVehicleNumberPlateText(vehicle, plate)
            TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
            SetEntityHeading(vehicle, heading)
            SetFuel(vehicle, 100.0)
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehicleBodyHealth(vehicle, 1000.0)
            SetVehicleCustomPrimaryColour(vehicle, 0, 0, 0)
            SetVehicleDirtLevel(vehicle, 0)
            SetVehicleUndriveable(vehicle, false)
            WashDecalsFromVehicle(vehicle, 1.0)
            SetVehRadioStation(vehicle, 'OFF')
            TriggerEvent('qb-drivingteacherjob:client:giveKeys', plate)
        end, vector3(tmpSpawnPosition.x, tmpSpawnPosition.y, tmpSpawnPosition.z + 1.0), true)

    end
end

local function SpawnTruckAndTrailer(licence)
    local coords = GetEntityCoords(PlayerPedId())
    local heading = GetEntityHeading(coords)
    local tmpSpawnPosition = vector3(coords.x + 5.0, coords.y + 1.0, coords.z)
    local vehiclePosition
    local vehicleHeading
    if not QBCore.Functions.SpawnClear(tmpSpawnPosition, 5.0) then
        QBCore.Functions.Notify(Lang:t('error.area_is_obstructed'), 'error', 5000)
	    return
    else
        QBCore.Functions.SpawnVehicle(Config.VehicleModels[licence], function(veh)
            local vehicle = veh
            vehiclePosition = GetEntityCoords(vehicle)
            vehicleHeading = GetEntityHeading(vehicle)
            SetVehicleNumberPlateText(vehicle, 'TR_LR_' .. string.format('%06d', math.random(1, 99)))
            SetEntityHeading(vehicle, heading)
            local plate = QBCore.Functions.GetPlate(vehicle)
            currentVehicle = vehicle
            currentPlate = plate
            currenVehicleName = Config.VehicleModels[licence]
            SetFuel(vehicle, 100.0)
            SetVehicleOnGroundProperly(vehicle)
            TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
            SetVehicleCustomPrimaryColour(loading, 0, 0, 0)
            SetVehicleDirtLevel(vehicle, 0)
            WashDecalsFromVehicle(vehicle, 1.0)
            SetVehRadioStation(vehicle, 'OFF')
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehicleBodyHealth(vehicle, 1000.0)
            TriggerEvent('qb-drivingteacherjob:client:giveKeys', plate)
        end, tmpSpawnPosition, true)
	    Wait(100)
        if Config.Trailers.CE ~= '' then
            QBCore.Functions.SpawnVehicle(Config.Trailers.CE, function(loading)
                SetVehicleNumberPlateText(loading, 'B_LR_' .. string.format('%06d', math.random(1, 99)))
                SetEntityHeading(loading, vehicleHeading)
                SetVehicleCustomPrimaryColour(loading, 0, 0, 0)
                SetVehicleDirtLevel(loading)
                WashDecalsFromVehicle(loading, 1.0)
                AttachEntityToEntity(loading, vehicle, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
            end, vector3(vehiclePosition.x, vehiclePosition.y - 5.0, vehiclePosition.z + 0.5), true)
        end
    end
end

local function SpawnBusAndTrailer(licence)
    local coords = GetEntityCoords(PlayerPedId())
    local heading = GetEntityHeading(coords)
    local tmpSpawnPosition = vector3(coords.x + 5.0, coords.y + 1.0, coords.z)
    local vehiclePosition
    local vehicleHeading
    if not QBCore.Functions.SpawnClear(tmpSpawnPosition, 5.0) then
        QBCore.Functions.Notify(Lang:t('error.area_is_obstructed'), 'error', 5000)
	    return
    else
        QBCore.Functions.SpawnVehicle(Config.VehicleModels[licence], function(veh)
            local vehicle = veh
            vehiclePosition = GetEntityCoords(vehicle)
            vehicleHeading = GetEntityHeading(vehicle)
            SetVehicleNumberPlateText(vehicle, 'TR_LR_' .. string.format('%06d', math.random(1, 99)))
            SetEntityHeading(vehicle, heading)
            local plate = QBCore.Functions.GetPlate(vehicle)
            currentVehicle = vehicle
            currentPlate = plate
            currenVehicleName = Config.VehicleModels[licence]
            SetFuel(vehicle, 100.0)
            SetVehicleOnGroundProperly(vehicle)
            TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
            SetVehicleCustomPrimaryColour(loading, 0, 0, 0)
            SetVehicleDirtLevel(vehicle, 0)
            WashDecalsFromVehicle(vehicle, 1.0)
            SetVehRadioStation(vehicle, 'OFF')
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehicleBodyHealth(vehicle, 1000.0)
            TriggerEvent('qb-drivingteacherjob:client:giveKeys', plate)
        end, tmpSpawnPosition, true)
        Wait(100)
        if Config.Trailers.DE ~= '' then
            QBCore.Functions.SpawnVehicle(Config.Trailers.DE, function(loading)
                SetVehicleNumberPlateText(loading, 'B_LR_' .. string.format('%06d', math.random(1, 99)))
                SetEntityHeading(loading, vehicleHeading)
                SetVehicleCustomPrimaryColour(loading, 0, 0, 0)
                SetVehicleDirtLevel(loading)
                WashDecalsFromVehicle(loading, 1.0)
                AttachEntityToEntity(loading, vehicle, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
            end, vector3(vehiclePosition.x, vehiclePosition.y - 5.0, vehiclePosition.z + 0.5), true)
        end
    end
end

local function SpawnBoatTrailer(licence)
    local coords = GetEntityCoords(PlayerPedId())
    local heading = GetEntityHeading(coords)
    local tmpSpawnPosition = vector3(coords.x + 5.0, coords.y + 1.0, coords.z)
    local vehicle
    local vehiclebone
    local trailer
    local trailerbone
    local vehiclePosition
    local vehicleHeading
    local trailerPosition
    local trailerHeading
    if not QBCore.Functions.SpawnClear(tmpSpawnPosition, 5.0) then
        QBCore.Functions.Notify(Lang:t('error.area_is_obstructed'), 'error', 5000)
	    return
    else
        QBCore.Functions.SpawnVehicle(Config.VehicleModels[licence], function(_vehicle)
            vehicle = _vehicle
            local plate = 'TL' .. string.format('%06d', math.random(1, 999999))
            SetVehicleNumberPlateText(vehicle, plate)
            SetEntityHeading(vehicle, heading)
            vehiclePosition = GetEntityCoords(vehicle)
            vehicleHeading = GetEntityHeading(vehicle)
            currenVehicleName = Config.VehicleModels[licence]
            vehiclebone = GetEntityBoneIndexByName(vehicle, 'attach_male')
            TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
            SetFuel(vehicle, 100.0)
            SetVehicleOnGroundProperly(vehicle)
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehicleBodyHealth(vehicle, 1000.0)
            SetVehicleCustomPrimaryColour(vehicle, 0, 0, 0)
            SetVehicleDirtLevel(vehicle, 0)
            SetVehicleUndriveable(vehicle, false)
            WashDecalsFromVehicle(vehicle, 1.0)
            SetVehRadioStation(vehicle, 'OFF')
            currentVehicle = vehicle
            currentPlate = plate
            TriggerEvent('qb-drivingteacherjob:client:giveKeys', plate)
        end, tmpSpawnPosition, true)
        Wait(100)
        QBCore.Functions.SpawnVehicle(Config.Trailers.BE, function(_trailer)
            trailer = _trailer
            trailerPosition = GetEntityCoords(trailer)
            trailerHeading = GetEntityHeading(trailer)
            trailerbone = GetEntityBoneIndexByName(trailer, 'attach_female')
            local plate = 'TR_LR_' .. string.format('%06d', math.random(1, 99))
            SetVehicleNumberPlateText(trailer, plate)
            SetEntityHeading(trailer, heading)
            SetVehicleCustomPrimaryColour(trailer, 0, 0, 0)
            SetVehicleDirtLevel(trailer)
            WashDecalsFromVehicle(trailer, 1.0)
            AttachEntityToEntity(trailerbone, vehiclebone, 1, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
        end, vector3(vehiclePosition.x + 0.2, vehiclePosition.y - 6.5, vehiclePosition.z), true)
        Wait(100)
        if Config.TrailerLoads.BE ~= '' then
            QBCore.Functions.SpawnVehicle(Config.TrailerLoads.BE, function(loading)
                SetVehicleNumberPlateText(loading, 'B_LR_' .. string.format('%06d', math.random(1, 99)))
                SetEntityHeading(loading, trailerHeading)
                AttachEntityToEntity(loading, trailer, 20, 0.0, -1.0, 0.25, 0.0, 0.0, 0.0, false, false, true, false, 20, true)
                SetVehicleCustomPrimaryColour(loading, 0, 0, 0)
                SetVehicleDirtLevel(loading)
                WashDecalsFromVehicle(loading, 1.0)
                SetFuel(loading, 100.0)
            end, vector3(trailerPosition.x, trailerPosition.y, trailerPosition.z + 1.0), true)
        end
    end
end

local function SpawnTestVehicle(licence)
    local coords  = GetEntityCoords(PlayerPedId())
    local heading = GetEntityHeading(coords)
    local tmpSpawnPosition = vector3(coords.x + 3.0, coords.y + 1.0, coords.z)
    if not QBCore.Functions.SpawnClear(tmpSpawnPosition, 5.0) then
        QBCore.Functions.Notify(Lang:t('error.area_is_obstructed'), 'error', 5000)
	    return
    else
        QBCore.Functions.SpawnVehicle(Config.VehicleModels[licence], function(_vehicle)
            vehicle = _vehicle
            local plate = 'TL' .. string.format('%06d', math.random(1, 999999))
            currentVehicle = vehicle
            currentPlate = plate
            currenVehicleName = Config.VehicleModels[licence]
            SetVehicleNumberPlateText(vehicle, plate)
            SetEntityHeading(vehicle, heading)
            SetFuel(vehicle, 100.0)
            SetVehicleOnGroundProperly(vehicle)
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehicleBodyHealth(vehicle, 1000.0)
            SetVehicleCustomPrimaryColour(vehicle, 0, 0, 0)
            SetVehicleDirtLevel(vehicle, 0)
            SetVehicleUndriveable(vehicle, false)
            WashDecalsFromVehicle(vehicle, 1.0)
            SetVehRadioStation(vehicle, 'OFF')
            TaskWarpPedIntoVehicle(PlayerPedId(), vehicle, -1)
            TriggerEvent('qb-drivingteacherjob:client:giveKeys', plate)
        end, tmpSpawnPosition, true)
    end
end

RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    PlayerData = QBCore.Functions.GetPlayerData()
end)

RegisterNetEvent('QBCore:Player:SetPlayerData', function(data)
    PlayerData = data
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(job)
    PlayerJob = job
end)

RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
    onDuty = duty
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnAirplane', function()
    SpawnAirplane('P')
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnHelikoper', function()
    SpawnHelikoper('H')
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnBoat', function()
    SpawnBoat('T')
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnBoatTrailer', function()
    SpawnBoatTrailer('BE')
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnTruckTrailer', function()
    SpawnTruckAndTrailer('CE')
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnScooter', function()
    SpawnTestVehicle('AM')
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnMotor', function()
    SpawnTestVehicle('A')
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnCar', function()
    SpawnTestVehicle('B')
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnTruck', function()
    SpawnTestVehicle('C')
end)

RegisterNetEvent('qb-drivingteacherjob:client:spawnBus', function()
    SpawnTestVehicle('D')
end)

RegisterNetEvent('qb-drivingteacherjob:client:giveKeys', function(plate)
    TriggerServerEvent(Config.GiveKeyScriptTrigger, plate)	
end)

RegisterNetEvent('qb-drivingteacherjob:client:removeKeys', function(plate)
    TriggerEvent(Config.RemoveKeyScriptTrigger, plate)		
end)

RegisterNetEvent('mh-drivingteacherjob:client:giveLicinceMenu', function()
    local playerlist = {}
    QBCore.Functions.TriggerCallback('mh-drivingteacherjob:server:GetOnlinePlayers', function(online)
        for key, v in pairs(online) do
            playerlist[#playerlist + 1] = {value = v.source, text = "(ID:"..v.source..") "..v.fullname}
        end
        local menu = exports["qb-input"]:ShowInput({
            header = Lang:t('menu.main_give_header'),
            submitText = Lang:t('menu.give_help'),
            inputs = {
                {
                    text = Lang:t('licence.select_player'),
                    name = "id",
                    type = "select",
                    options = playerlist,
                    isRequired = true
                },
                {
                    text = Lang:t('licence.select_licence'),
                    name = "licence",
                    type = "select",
                    options = {
                        { value = "N", text = Lang:t('licence.licence_n') },
                        { value = "AM", text = Lang:t('licence.licence_am')},
                        { value = "A", text = Lang:t('licence.licence_a') },
                        { value = "B", text = Lang:t('licence.licence_b') },
                        { value = "BE", text = Lang:t('licence.licence_be') },
                        { value = "C", text = Lang:t('licence.licence_c') },
                        { value = "CE", text = Lang:t('licence.licence_ce') },
                        { value = "D", text = Lang:t('licence.licence_d') },
                        { value = "DE", text = Lang:t('licence.licence_de') },
                        { value = "T", text = Lang:t('licence.licence_t') },
                        { value = "H", text = Lang:t('licence.licence_h') },
                        { value = "P", text = Lang:t('licence.licence_p') },
                        { value = "R", text = Lang:t('licence.licence_r') },
                        { value = "AMB", text = Lang:t('licence.licence_amb') },
                        { value = "POL", text = Lang:t('licence.licence_pol') },
                    },
                    isRequired = true
                }
            }
        })
        if menu then
            if not menu.id and not menu.licence then
                return
            else
                TriggerServerEvent('mh-drivingteacherjob:server:givelicince', tonumber(menu.id), tostring(menu.licence))
            end
        end
    end)
end)

RegisterNetEvent('mh-drivingteacherjob:client:takeLicinceMenu', function()
    local playerlist = {}
    QBCore.Functions.TriggerCallback('mh-drivingteacherjob:server:GetOnlinePlayers', function(online)
        for key, v in pairs(online) do
            playerlist[#playerlist + 1] = {value = v.source, text = "(ID:"..v.source..") "..v.fullname}
        end

        local menu = exports["qb-input"]:ShowInput({
            header = Lang:t('menu.main_take_header'),
            submitText = Lang:t('menu.remove_help'),
            inputs = {
                {
                    text = Lang:t('licence.select_player'),
                    name = "id",
                    type = "select",
                    options = playerlist,
                    isRequired = true
                },
            }
        })
        if menu then
            if not menu.id then
                return
            else
                TriggerServerEvent('mh-drivingteacherjob:server:takelicince', tonumber(menu.id))
            end
        end
    end)
end)

-- Threads
CreateThread(function()
    for _, station in pairs(Config.Locations["stations"]) do
        if station.showBlip then
            local blip = AddBlipForCoord(station.coords.x, station.coords.y, station.coords.z)
            SetBlipSprite(blip, station.blipSprite)
            SetBlipAsShortRange(blip, true)
            SetBlipScale(blip, station.blipScale)
            SetBlipColour(blip, station.blipColour)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(station.label)
            EndTextCommandSetBlipName(blip)
        end
    end
end)

-- Toggle Duty in an event.
RegisterNetEvent('qb-drivingteacherjob:client:ToggleDuty', function()
    onDuty = not onDuty
    TriggerServerEvent("QBCore:ToggleDuty")
end)


CreateThread(function()
    -- Toggle Duty
    for k, v in pairs(Config.Locations["duty"]) do
        exports['qb-target']:AddBoxZone("drivingteacher_"..k, v, 1, 1, {
            name = "drivingteacher_"..k,
            heading = 11,
            debugPoly = false,
            minZ = v.z - 1,
            maxZ = v.z + 1,
        }, {
            options = {
                {
                    type = "client",
                    event = "qb-drivingteacherjob:client:ToggleDuty",
                    icon = "fas fa-sign-in-alt",
                    label = "Sign In",
                    job = "drivingteacher",
                },
            },
            distance = 1.5
        })
    end
end)
