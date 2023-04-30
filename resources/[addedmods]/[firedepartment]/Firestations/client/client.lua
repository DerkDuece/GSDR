-- ==========================FireFighter Job==========================
-- ===============================By Wick===============================
-- ======================================================================
local QBCore = exports['qb-core']:GetCoreObject()
Fires = {}
PlayerJob = {}
OnDuty = false

Fires.script = GetResourceState('Firescript') ==  'started' and 'QBCORE'
if not Fires.script then warn('YOU DONT HAVE ANY SUPPORTED FIRESCRIPT') end


AddEventHandler('onResourceStop', function(resourceName)
	if (GetCurrentResourceName() ~= resourceName) then return end
	print('The resource ' .. resourceName .. ' was stopped.')
end)

------------------------
-- Job Check --
------------------------
RegisterNetEvent('QBCore:Client:OnPlayerLoaded', function()
    local player = QBCore.Functions.GetPlayerData()
    PlayerJob = player.job
-- i dont have ToggleDuty here for we have one in qb-core
	if Fires.script then
		TriggerServerEvent("fire:ToggleDuty")
	end
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
    if PlayerJob.name == Config.JobName and onDuty then
        TriggerServerEvent("QBCore:ToggleDuty")
    end
	if Fires.script then
		TriggerServerEvent("fire:server:Removedispatch")
	end
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
	OnDuty = false
end)


-----------------------------------------------
-- qb-target Sign In/Out --
-----------------------------------------------
RegisterNetEvent('LSFD:Duty', function()
	onDuty = not onDuty
    TriggerServerEvent("QBCore:ToggleDuty")
	
    if Fires.script then
        TriggerServerEvent("fire:ToggleDuty")
    end
end)

CreateThread(function()
		--Sign In/Out --
		for i=1,#Config.Locations["Duty"] do
		exports['qb-target']:AddBoxZone("SignInOut"..i,Config.Locations["Duty"][i], 5, 5, {
			name = "SignInOut"..i,
			heading = 0,
			debugPoly = false,
			minZ = Config.Locations["Duty"][i].z -5,
			maxZ = Config.Locations["Duty"][i].z +5,
		}, {
			options = {
				{
					type = "Client",
					event = "LSFD:Duty",
					icon = "fas fa-sign-in-alt",
					label = 'Sign In/Out',
					job = Config.JobName,
				},
			},
			distance = 2
		})
	end
end)

-- stations blip
Citizen.CreateThread(function()
	for _, stationblip in pairs(Config.Locations["stations"]) do
		if Config.UseBlips then
            stationblip.blip = AddBlipForCoord(stationblip.coords.x, stationblip.coords.y, stationblip.coords.z)
	   		SetBlipSprite(stationblip.blip, stationblip.blipid)
	   		--SetBlipDisplay(stationblip.blip, 4)
	   		SetBlipScale(stationblip.blip, 0.4)	
	   		SetBlipColour(stationblip.blip, 0)
	   		SetBlipAsShortRange(stationblip.blip, true)
	   		BeginTextCommandSetBlipName("STRING")
	   		AddTextComponentString(stationblip.label)
	   		EndTextCommandSetBlipName(stationblip.blip)
	 	end
   	end	
end)