local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('randol_pizzajob:server:Payment', function(jobsDone)
	local src = source
    local payment = 75
	local Player = QBCore.Functions.GetPlayer(source)
    jobsDone = tonumber(jobsDone)
 
        Player.Functions.AddMoney("bank", payment)
        TriggerClientEvent("QBCore:Notify", source, "You received $"..payment, "success")

end)



