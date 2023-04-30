local QBCore = exports['qb-core']:GetCoreObject()
local FireSirens = {}
local Flashlights = {}


-- Item --
QBCore.Functions.CreateUseableItem("scbagear", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if not Player.Functions.RemoveItem(item.name, 1, item.slot) then return end
    TriggerClientEvent("qb-Firestations_consum:UseScba", source)
end)

RegisterNetEvent('qb-Firestations_server:OffSCBA', function()
	local Player = QBCore.Functions.GetPlayer(source)
	local SCBA = Player.Functions.GetItemByName('scbagear')
	if Player.PlayerData.items ~= nil then
		if SCBA ~= nil then
			if SCBA.amount >= 2 then
				Player.Functions.RemoveItem("scbagear", 1, false)
				TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['scbagear'], "remove")
			else
				TriggerClientEvent('QBCore:Notify', source, "you have one", 'error')		
			end
		else
			Player.Functions.AddItem("scbagear", 1)
			TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items['scbagear'], "add")
		end
	end
end)

RegisterNetEvent("qb-Firestations:ToggleSuitLight", function(bool, player)
    if bool then
        Flashlights[source] = {player}
    else
        Flashlights[source] = nil
    end

    TriggerClientEvent("qb-Firestations:FlightHandler", -1, Flashlights)
end)

RegisterServerEvent("qb-Firestations:StoreSiren")
AddEventHandler("qb-Firestations:StoreSiren", function(Station)
	if not FireSirens[Station.Name:lower()] then
		FireSirens[Station.Name:lower()] = Station
		FireSirens[Station.Name:lower()].ID = source

		TriggerClientEvent("qb-Firestations:Bounce:ServerValues", -1, FireSirens)
	end
end)

RegisterServerEvent("qb-Firestations:RemoveSiren")
AddEventHandler("qb-Firestations:RemoveSiren", function(StationName)
	if FireSirens[StationName] then
		FireSirens[StationName] = nil
	end
end)

-- Plays tones on all clients
RegisterServerEvent("qb-Firestations:PageTones")
AddEventHandler("qb-Firestations:PageTones", function(Tones, HasDetails, Details)
	TriggerClientEvent("qb-Firestations:PlayTones", -1, Tones, HasDetails, Details)
end)

-- Plays cancel sound on all clients
RegisterServerEvent("qb-Firestations:CancelPage")
AddEventHandler("qb-Firestations:CancelPage", function(Tones, HasDetails, Details)
	TriggerClientEvent("qb-Firestations:CancelPage", -1, Tones, HasDetails, Details)
end)

-- Play fire siren on all clients
RegisterServerEvent("qb-Firestations:SoundSirens")
AddEventHandler("qb-Firestations:SoundSirens", function()
	TriggerClientEvent("qb-Firestations:PlaySirens", -1)
end)

-- ================================
-- ========= Hose =================
-- ================================
RegisterNetEvent('qb-Firestations:startParticleEffect', function()
	TriggerClientEvent('qb-Firestations:startParticleEffect', -1, source)
end)

RegisterNetEvent('qb-Firestations:stopParticleEffect', function()
	TriggerClientEvent('qb-Firestations:stopParticleEffect', -1, source)
end)