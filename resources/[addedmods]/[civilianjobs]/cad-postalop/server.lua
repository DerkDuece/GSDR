local QBCore = exports['qb-core']:GetCoreObject()
--===================================================
--                 JOB CASH
--===================================================
RegisterNetEvent('cad-delivery:cash', function(currentJobPay, value)
	local _source = source
	local Player = QBCore.Functions.GetPlayer(_source)
	if value == "job" then
		exports.pefcl:addBankBalance(source, currentJobPay)
		TriggerClientEvent("QBCore:Notify", _source, "You recieved payslip of $" .. currentJobPay)
	elseif value == "add" then
		exports.pefcl:addCash(source, currentJobPay)
		TriggerClientEvent("QBCore:Notify", _source, "Your $" .. currentJobPay .. " deposit was returned.")
	elseif value == "remove" and Player.PlayerData.money.cash >= currentJobPay then
		exports.pefcl:removeCash(source, currentJobPay)
		TriggerClientEvent("QBCore:Notify", _source, "Your $" .. currentJobPay .. " was taken as deposit.")
	end
end)
