local QBCore = exports['qb-core']:GetCoreObject()

PlayerJob = {}
OxygenLevel = 100
OxygenUsageEnabled = false
FireZoneEnabled = false
insideZone = false
Fireproof = false
Smokeproof = false
Blackedout = false
local Flashlights = {}
Lightenabled = false

Wkfire = {}
Wkfire.OxygenLevelType = true
Wkfire.SmokeInhalationDamageTime = 6
Wkfire.SmokeInhalationDamageInteger = 2
Wkfire.OxygenUsageInterval = 2.27
Wkfire.SmokeDamageInterval = 3

Wkfire.AlertWhen = {
    {oxygen = 75, text = "Oxygen level at 75%"},
    {oxygen = 50, text = "Oxygen level at 50%"},
    {oxygen = 25, text = "Oxygen level at 25%"},
}

-- onResourceStart
AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() == resourceName then
        PlayerJob = QBCore.Functions.GetPlayerData().job
        isLoggedIn = true
		--Smoke()
    end
end)


-- ==========================FireFighter Job==========================
-- ===============================Turnout===============================
-- ===============================By Wick===============================
-- ======================================================================

RegisterNetEvent('qb-Firestations_consum:UseScba', function ()
    QBCore.Functions.Progressbar("use_scba", Lang:t("turnout.EquipedScba"), 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.6),
        RequestAnimDict("clothingtie"),
        TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 3.0, 3.0, 1200, 51, 0, false, false, false)
    }, {}, {}, {}, function() -- Done
        QBCore.Functions.Notify(Lang:t('turnout.EquipedScba'), 'success')
        TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["scbagear"], "remove")
        local gender = QBCore.Functions.GetPlayerData().charinfo.gender
        if gender == 1 then
            ClearPedSecondaryTask(PlayerPedId())
            SetPedComponentVariation(PlayerPedId(), 8, Config.turnout['scba']['female'].item, Config.turnout['scba']['female'].texture, 0)
        else
            ClearPedSecondaryTask(PlayerPedId())
            SetPedComponentVariation(PlayerPedId(), 8, Config.turnout['scba']['male'].item, Config.turnout['scba']['male'].texture, 0)
        end
        OxygenLevel = 100
    end)
end)

RegisterNetEvent('qb-Firestations_consum:OffSCBA', function ()
    QBCore.Functions.Progressbar("remove.scba", Lang:t("turnout.remove.scba"), 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.6),
        RequestAnimDict("clothingtie"),
        TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 3.0, 3.0, 1200, 51, 0, false, false, false)
    }, {}, {}, {}, function() -- Done
        QBCore.Functions.Notify(Lang:t('turnout.remove.scba'), 'success')
        SetPedComponentVariation(PlayerPedId(), 8, -1, 0, 0)
        TriggerServerEvent("qb-Firestations_server:OffSCBA")
        OxygenLevel = 0
    end)
end)

-- Fire gear
RegisterNetEvent('qb-Firestations:Client:TurnoutOn', function ()
    QBCore.Functions.Progressbar("use_firegear", Lang:t("turnout.use_firegear"), 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.6),
        RequestAnimDict("clothingtie"),
        TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 3.0, 3.0, 1200, 51, 0, false, false, false)
    }, {}, {}, {}, function() -- Done
        QBCore.Functions.Notify(Lang:t('turnout.use_firegear'), 'success')
        local gender = QBCore.Functions.GetPlayerData().charinfo.gender
		if gender == 1 then
            ClearPedSecondaryTask(PlayerPedId())
            SetPedComponentVariation(PlayerPedId(), 3, Config.turnout['arms']['female'].item, Config.turnout['arms']['female'].texture, 0)
            SetPedComponentVariation(PlayerPedId(), 4, Config.turnout['suitpants']['female'].item, Config.turnout['suitpants']['female'].texture, 0)
            SetPedComponentVariation(PlayerPedId(), 11, Config.turnout['suittop']['female'].item, Config.turnout['suittop']['female'].texture, 0)
            SetPedPropIndex(PlayerPedId(), 0, Config.turnout['suithat']['female'].item, Config.turnout['suithat']['female'].texture, 0)
            SetPedComponentVariation(PlayerPedId(), 6, Config.turnout['suitshoes']['female'].item, Config.turnout['suitshoes']['female'].texture, 0)
        else
            ClearPedSecondaryTask(PlayerPedId())
            SetPedComponentVariation(PlayerPedId(), 3, Config.turnout['arms']['male'].item, Config.turnout['arms']['male'].texture, 0)
            SetPedComponentVariation(PlayerPedId(), 4, Config.turnout['suitpants']['male'].item, Config.turnout['suitpants']['male'].texture, 0)
            SetPedComponentVariation(PlayerPedId(), 11, Config.turnout['suittop']['male'].item, Config.turnout['suittop']['male'].texture, 0)
            SetPedPropIndex(PlayerPedId(), 0, Config.turnout['suithat']['male'].item, Config.turnout['suithat']['male'].texture, 0)
            SetPedComponentVariation(PlayerPedId(), 6, Config.turnout['suitshoes']['male'].item, Config.turnout['suitshoes']['male'].texture, 0)
        end
        OxygenLevel = 100    
    end)
end)

RegisterNetEvent('qb-Firestations:Client:TurnoutOff', function ()
    QBCore.Functions.Progressbar("remove_firegear", Lang:t("turnout.remove_firegear"), 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.6),
        RequestAnimDict("clothingtie"),
        TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 3.0, 3.0, 1200, 51, 0, false, false, false)
    }, {}, {}, {}, function() -- Done
        QBCore.Functions.Notify(Lang:t('turnout.remove_firegear'), 'error')
        if GetResourceState('qb-clothing') == 'started' then
            TriggerServerEvent("qb-clothes:loadPlayerSkin")
            TriggerServerEvent("qb-clothing:loadPlayerSkin")
        elseif GetResourceState('illenium-appearance') == 'started' then
            exports['illenium-appearance']:setPedAppearance(PlayerPedId())
        end
        if Config.Isconsumables == true then
            SetPedComponentVariation(PlayerPedId(), 8, -1, 0, 0)
        end
        OxygenLevel = 0
    end)
end)

-- SCBA
RegisterNetEvent('qb-Firestations_TurnoutOn:UseScba', function ()
    QBCore.Functions.Progressbar("EquipedScba", Lang:t("turnout.EquipedScba"), 1500, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.6),
        RequestAnimDict("clothingtie"),
        TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 3.0, 3.0, 1200, 51, 0, false, false, false)
    }, {}, {}, {}, function() -- Done
        QBCore.Functions.Notify(Lang:t('turnout.EquipedScba'), 'success')
        local gender = QBCore.Functions.GetPlayerData().charinfo.gender
        if gender == 1 then
            ClearPedSecondaryTask(PlayerPedId())
            SetPedComponentVariation(PlayerPedId(), 8, Config.turnout['scba']['female'].item, Config.turnout['scba']['female'].texture, 0)
        else
            ClearPedSecondaryTask(PlayerPedId())
            SetPedComponentVariation(PlayerPedId(), 8, Config.turnout['scba']['male'].item, Config.turnout['scba']['male'].texture, 0)
        end
        OxygenLevel = 100
    end)
end)

RegisterNetEvent('qb-Firestations_TurnoutOff:OffSCBA', function ()
    QBCore.Functions.Progressbar("remove.scba", Lang:t("turnout.remove.scba"), 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.6),
        RequestAnimDict("clothingtie"),
        TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 3.0, 3.0, 1200, 51, 0, false, false, false)
    }, {}, {}, {}, function() -- Done
        QBCore.Functions.Notify(Lang:t('turnout.remove.scba'), 'success')
        ClearPedSecondaryTask(PlayerPedId())
        SetPedComponentVariation(PlayerPedId(), 8, -1, 0, 0)
        OxygenLevel = 0
    end)
end)

RegisterNetEvent("qb-Firestations:resupply", function()
	local ped = PlayerPedId()
	local pos = GetEntityCoords(ped)
	local entityWorld = GetOffsetFromEntityInWorldCoords(ped, 0.0, 3.0, 0.0)
	local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, ped, 0)
	local _, _, _, _, vehicleHandle = GetRaycastResult(rayHandle)
	if IsEntityAVehicle(vehicleHandle) == 1 then
		local vehicleModel = GetEntityModel(vehicleHandle)
		local vehicleHandle = NetworkGetNetworkIdFromEntity(vehicleHandle)
		 SetNetworkIdExistsOnAllMachines(vehicleHandle, true)
	end
    QBCore.Functions.Notify(Lang:t('progressbar.oxygen_resupply'), 'success')	
	OxygenLevel = 100 -- Sets OxygenLevel to 100%
end)



RegisterNetEvent('qb-Firestations:turnoutMenu', function(data)
    if Config.Isconsumables == true then
        exports['qb-menu']:openMenu({
            {
                isMenuHeader = true, 
                header = "👨‍🚒| Fire Turnout Gear | 👨‍🚒",
            },
            {
                header = "• Turnout Gear On",
                txt = "Puts your turnout gear on",
                params = {
                    event = "qb-Firestations:Client:TurnoutOn",
                    args = {
                        number = 1,
                       }
                }
            },
            {
                header = "• Turnout Gear Off",
                txt = "Takes your turnout gear off",
                params = {
                    event = 'qb-Firestations:Client:TurnoutOff',
                    args = {
                        number = 1,
                    }
                },
            },
            {
                header = "• ScbaGear",
                txt = "Takes/off your Scba gear",
                params = {
                    event = 'qb-Firestations_consum:OffSCBA',
                    args = {
                        number = 1,
                    }
                },
            },     
            {
                    isMenuHeader = true, 
                    header = "Close (ESC)",
            },
        })
    elseif Config.Isconsumables == false then
        exports['qb-menu']:openMenu({
            {
                isMenuHeader = true, 
                header = "👨‍🚒| Fire Turnout Gear | 👨‍🚒",
            },
            {  
                header = "• Turnout Gear On",
                txt = "Puts your turnout gear on",
                params = {
                    event = "qb-Firestations:Client:TurnoutOn",
                    args = {
                        number = 1,
                    }
                }
            },
            { 
                header = "• Turnout Gear Off",
                txt = "Takes your turnout gear off",
                params = {
                    event = 'qb-Firestations:Client:TurnoutOff',
                    args = {
                        number = 1,
                    }
                },
            },
            {
                header = "• Takes a Scba gear",
                txt = "Takes your Scba gear",
                params = {
                    event = 'qb-Firestations_TurnoutOn:UseScba',
                    args = {
                        number = 1,
                    }
                },
            },
            { 
                header = "• Takes off Scba gear",
                txt = "Take off your SCBA..",
                params = {
                    event = 'qb-Firestations_TurnoutOff:OffSCBA',
                    args = {
                        number = 1,
                    }
                },
            },
            {
                isMenuHeader = true, 
                header = "Close (ESC)",
            },
        })    
    end
end)

-- ==================changeOutfit=========================
-- =====================By Wick===========================
-- =======================================================
RegisterNetEvent('qb-Firestations_client:changeOutfit', function()
    QBCore.Functions.Progressbar("use_scba", Lang:t("progressbar.use_scba"), 1500, false, true, {
        disableMovement = false,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
        TriggerServerEvent("InteractSound_SV:PlayOnSource", "Clothes1", 0.6),
        RequestAnimDict("clothingtie"),
        TaskPlayAnim(PlayerPedId(), "clothingtie", "try_tie_negative_a", 3.0, 3.0, 1200, 51, 0, false, false, false)
    }, {}, {}, {}, function() -- Done
        if GetResourceState('qb-clothing') == 'started' then
            TriggerEvent('qb-clothing:client:openOutfitMenu')
        end
    end)
end)

-- ====================================
-- ====== OxygenTank Functions ========
-- ====================================
function IsUsageOxygenTank(ped, gender)
    local gender = QBCore.Functions.GetPlayerData().gender
    local pedClothing = GetPedDrawableVariation(ped, 8)
    if gender == 1 then
        return Config.turnout['scba']['female'][pedClothing]
    else
        return Config.turnout['scba']['male'][pedClothing]
    end
end

-- for Fireproof
function IsWearingFireTop(ped, gender)
    local gender = QBCore.Functions.GetPlayerData().gender
    local pedClothing = GetPedDrawableVariation(ped, 11)
    if gender == 1 then
        return Config.turnout['suittop']['female'][pedClothing]
    else
        return Config.turnout['suittop']['male'][pedClothing]
    end
end

function IsWearingFirePants(ped, gender)
    local gender = QBCore.Functions.GetPlayerData().gender
    local pedClothing = GetPedDrawableVariation(ped, 4)
    if gender == 1 then
        return Config.turnout['suitpants']['female'][pedClothing]
    else
        return Config.turnout['suitpants']['male'][pedClothing]
    end
end

function IsWearingFullSuit(ped, witho2)
	if witho2 then
		local top = IsWearingFireTop(ped)
		local bottom = IsWearingFirePants(ped)
		local tank = IsUsageOxygenTank(ped)
		if top and bottom and tank then
			return true
		else
			return false, top, bottom, tank
		end
	else
		local top = IsWearingFireTop(ped)
		local bottom = IsWearingFirePants(ped)
		if top and bottom then
			return true
		else
			return false, top, bottom
		end
	end
end

-- for Smokeproof
function InZoneFire(ped, ischeck)
    if ischeck then
        return true
    else
        return false
    end
end


function ToggleOxygenUsage()
	if Config.PlaySound == true then
		if OxygenLevel > 0 then
			OxygenUsageEnabled = not OxygenUsageEnabled
			if OxygenUsageEnabled then
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "scottmask", 0.1)
                QBCore.Functions.Notify(Lang:t('progressbar.oxygen_on'), 'success')
			else
				TriggerServerEvent("InteractSound_SV:PlayOnSource", "ventilator", 0.4)
                QBCore.Functions.Notify(Lang:t('progressbar.oxygen_off'), 'error')
			end
		else
            QBCore.Functions.Notify(Lang:t('progressbar.oxygen_empty'), 'error')
			TriggerServerEvent("InteractSound_SV:PlayOnSource", "ventilator", 0.4)
		end
	elseif Config.PlaySound == false then
		if OxygenLevel > 0 then
			OxygenUsageEnabled = not OxygenUsageEnabled
			if OxygenUsageEnabled then
                QBCore.Functions.Notify(Lang:t('progressbar.oxygen_on'), 'success')
			else
                QBCore.Functions.Notify(Lang:t('progressbar.oxygen_off'), 'error')
			end
		else
            QBCore.Functions.Notify(Lang:t('progressbar.oxygen_empty'), 'error')
		end
	end
end

-- =======================================
-- ========== Light Functions ============
-- =======================================

RegisterNetEvent("qb-Firestations:FlightHandler", function(Lights)
	for _, player in pairs(QBCore.Functions.GetPlayers()) do
		Flashlights = Lights
	end
end)

function ToggleSuitLight()
	TriggerServerEvent("qb-Firestations:ToggleSuitLight", not Lightenabled)
	Lightenabled = not Lightenabled

	if Config.PlaySound == true then
		TriggerServerEvent("InteractSound_SV:PlayOnSource", "flashlight", 0.8)
	end

	Wait(1250)
end

function SetSuitLightState(state)
	if state == "on" then
		TriggerServerEvent("qb-Firestations:ToggleSuitLight", true)
		Lightenabled = true
	elseif state == "off" then
		TriggerServerEvent("qb-Firestations:ToggleSuitLight", false)
		Lightenabled = false
	end
end


-- hmmmm why
function LoadAnimDict(dict)
	while not HasAnimDictLoaded(dict) do
		RequestAnimDict(dict)
		Wait(10)
	end
end

CreateThread(function()
	while true do
		Wait(1)
		
		for player,_ in pairs(Flashlights) do
			local source = GetPlayerFromServerId(player)
			local ped = GetPlayerPed(source)

			if player and source and ped then
				local bonecoords = GetPedBoneCoords(ped, 23553, 0.0, 0.0, 0.0)
				DrawSpotLight(bonecoords, GetEntityForwardVector(ped), 255, 255, 255, 40.0, 2.0, 2.0, 10.0, 15.0)
			end
		end
	end
end)

-- =======================================
-- ========== Fire Functions =============
-- =======================================

function DoesFireExistAndIsInRadius(radius)
    local ped = PlayerPedId() 
	local x,y,z = table.unpack(GetEntityCoords(ped))
	local isfire, coords = GetClosestFirePos(x, y, z)
        if isfire then
            local x1,y1,z1 = table.unpack(coords)
            if GetDistanceBetweenCoords(x, y, z, x1, y1, z1, false) <= radius then
                return true, GetDistanceBetweenCoords(x, y, z, x1, y1, z1, false)
            else
                return true, false
            end
        else
        return false, false
    end
end

function SetProofs()
	local ped = PlayerPedId()
	local sleep = 2500

    if IsWearingFullSuit(ped, false) then
        SetEntityProofs(ped, false, true, false, false, false, false, Smokeproof, Smokeproof, false)
        Fireproof = true
    else
        SetEntityProofs(ped, false, false, false, false, false, false, Smokeproof, Smokeproof, false)
        Fireproof = false
    end

    if IsUsageOxygenTank(ped) and OxygenLevel > 0 and OxygenUsageEnabled then
        SetEntityProofs(ped, false, Fireproof, false, false, false, false, true, true, false)
        Smokeproof = true
    else
        SetEntityProofs(ped, false, Fireproof, false, false, false, false, false, false, false)
        Smokeproof = false
    end 
    
    if InZoneFire(ped) and FireZoneEnabled then
        SetEntityProofs(ped, false, Fireproof, false, false, false, false, true, true, false)
        Smokeproof = true
    else
        SetEntityProofs(ped, false, Fireproof, false, false, false, false, false, false, false)
        Smokeproof = false
    end
    Wait(sleep)
end

-- =======================================
-- ========== KEYBOARD Functions =========
-- =======================================

RegisterKeyMapping('scba', 'Toggle SCBA ', 'KEYBOARD', 'O')
RegisterCommand('scba', function()
	local ped = PlayerPedId()

	if PlayerJob.name == Config.JobName and IsUsageOxygenTank(ped) then
		ToggleOxygenUsage()
	elseif PlayerJob.name == Config.JobName and not PlayerJob.onduty then
        QBCore.Functions.Notify(Lang:t('error.Not_OnDuty'), 'error')	
	elseif PlayerJob.name == Config.JobName then
        QBCore.Functions.Notify(Lang:t('info.Not_Uniform'), 'error')	
	end
end)

RegisterKeyMapping('flash', 'Toggle Flashlight ', 'KEYBOARD', 'U')
RegisterCommand('flash', function()
	local ped = PlayerPedId()

	if PlayerJob.name == Config.JobName and IsUsageOxygenTank(ped) then
		ToggleSuitLight()
	elseif PlayerJob.name == Config.JobName and not PlayerJob.onduty then
        QBCore.Functions.Notify(Lang:t('error.Not_OnDuty'), 'error')	
	elseif PlayerJob.name == Config.JobName then
        QBCore.Functions.Notify(Lang:t('info.Not_Uniform'), 'error')	
	end
end)

-- =======================================
-- ===== CreateThread Functions ==========
-- =======================================

CreateThread(function()
	while true do
		Wait(0)
        if LocalPlayer.state['isLoggedIn'] then
            local ped = PlayerPedId()
            local blt, fre, expl, by, Wi, ck, p89, drwn = GetEntityProofs(ped)
            local x,y,z = table.unpack(GetEntityCoords(ped))
       
            SetProofs()
        
            if not IsUsageOxygenTank(ped) then
                if Wkfire.OxygenLevelType ~= "text" then
                    SendNUIMessage({
                        type = "hide"
                    })
                end
            end
        
            if Wkfire.OxygenLevelType ~= "text" then
                SendNUIMessage({
                    type = "hide"
                })
            end
                
            if IsUsageOxygenTank(ped) then
                if Wkfire.OxygenLevelType == true then
                    SendNUIMessage({
                        type = "set-show",
                        value = OxygenLevel
                    })
                end
            end
        end
	end
end)

CreateThread(function()
	while true do

		Wait(Wkfire.OxygenUsageInterval * 1000)
		local ped = PlayerPedId()
		if IsUsageOxygenTank(ped) and OxygenUsageEnabled and OxygenLevel > 0 then
			OxygenLevel = OxygenLevel - 1
			for i,alert in pairs(Wkfire.AlertWhen) do
				if OxygenLevel == alert.oxygen then
                    QBCore.Functions.Notify(Lang:t('progressbar.oxygen_low'), 'info')	
				end
			end
            if OxygenLevel <= 0 then
                    ToggleOxygenUsage()
            end
		end
	end
end)

--function Smoke()
    CreateThread(function()
        while true do

            Wait(Wkfire.SmokeInhalationDamageTime * 1000)
            local ped = PlayerPedId()
            local exists,inrange = DoesFireExistAndIsInRadius(7)
            if Config.Smokeproof == false then
                if exists and inrange then
                    if not FireZoneEnabled then
                        if not OxygenUsageEnabled or OxygenLevel <= 0 then
                            SetEntityHealth(ped, GetEntityHealth(ped) - Wkfire.SmokeInhalationDamageInteger)
                            SetPlayerHealthRechargeMultiplier(ped, 0.0)
                            QBCore.Functions.Notify(Lang:t('progressbar.Smoke'), 'info')	
                        else
                            SetPlayerHealthRechargeMultiplier(ped, 1.0)
                        end
                    end
                end
            end
        end
    end)
--end

CreateThread(function()
    local zonesfire = {}
    for k, v in pairs(Config.SmokeproofZone) do
        zonesfire[#zonesfire+1] = BoxZone:Create(
                v.firezone, v.length, v.width, {
                minZ = v.firezone.z - 2,
                maxZ = v.firezone.z + 2,
                debugPoly = false,
        })
    end

    local fireCombo = ComboZone:Create(zonesfire, {name = "fireCombo", debugPoly = false})
    fireCombo:onPlayerInOut(function(insideZone, zonesfire)
        FireZoneEnabled = not FireZoneEnabled
        if insideZone then
            if FireZoneEnabled then
            FireZoneEnabled = true
            end
        else
            FireZoneEnabled = false
        end
    end)
end)
