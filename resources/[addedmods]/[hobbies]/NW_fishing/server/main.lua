local QBCore = Config.Core

local letters = {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","y","z"}
local numbers = {1,2,3,4,5,6,7,8,9,0,10,11,12,12,13,14,15,16,17,18,19}
local symbols = {"!","@","#","$","%","^","&","*","(",")","'","/","{","}"}

local password = letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..symbols[math.random(1,#symbols)]..symbols[math.random(1,#symbols)]..letters[math.random(1,#letters)]..symbols[math.random(1,#symbols)]..symbols[math.random(1,#symbols)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..numbers[math.random(1,#numbers)]..numbers[math.random(1,#numbers)]..letters[math.random(1,#letters)]..letters[math.random(1,#letters)]..symbols[math.random(1,#symbols)]..symbols[math.random(1,#symbols)]..letters[math.random(1,#letters)]..symbols[math.random(1,#symbols)]


RegisterNetEvent("NW_fishing:sendPassword", function()
	local _source = source
	TriggerClientEvent("NW_fishing:receivePassword",_source, password)
	Player(tonumber(_source)).state:set('CanGetFish', false,  true)
	Player(tonumber(_source)).state:set('CanGetBait', false,  true)
end)


RegisterNetEvent('NW_fishing:cashbag', function(clientPass)
    local src = source

	if password ~= clientPass or not Player(tonumber(src)).state.CanGetFish then return end
	Player(tonumber(src)).state:set('CanGetFish', false,  true)

    local xPlayer = QBCore.Functions.GetPlayer(src)
	exports.ox_inventory:AddItem(source, 'money' ,math.random(5, 15))
	TriggerEvent("NW_Fishing:CatchLog", src, "cash")
end)

QBCore.Functions.CreateCallback('NW_fishing:ValidateBait', function(source, cb, bait)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local checkbait = Player.Functions.GetItemByName(bait)
	if checkbait ~= nil and bait ~= "none" then
		cb(checkbait.amount > 0)
	else
		cb(false)
	end
end)

RegisterNetEvent('NW_fishing:getBait', function(clientPass, bait, take, amount)
	local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)

	if clientPass ~= password or not Player(tonumber(src)).state.CanGetBait or xPlayer.Functions.GetItemByName(take).amount < 1 then return end
	Player(tonumber(src)).state:set('CanGetBait', false,  true)

	xPlayer.Functions.RemoveItem(take, 1)
	xPlayer.Functions.AddItem(bait, amount)
	TriggerClientEvent('inventory:client:ItemBox',src, QBCore.Shared.Items["seaturtle"], "remove")
	TriggerClientEvent('inventory:client:ItemBox',src, QBCore.Shared.Items["illegalbait"], "add")
end)

RegisterNetEvent('NW_fishing:RemoveItem', function(item, amount, clientPass)
	if clientPass ~= password then return end
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
	xPlayer.Functions.RemoveItem(item, amount)
	TriggerClientEvent('inventory:client:ItemBox',src, QBCore.Shared.Items[item], "remove")
end)

RegisterNetEvent('NW_fishing:ReceiveItem', function(item, amount, clientPass)
	local src = source
	if password ~= clientPass or not Player(tonumber(src)).state.CanGetFish then return end
	Player(tonumber(src)).state:set('CanGetFish', false,  true)
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem(item, amount)
	TriggerClientEvent('inventory:client:ItemBox',src, QBCore.Shared.Items[item], "add")
	TriggerEvent("NW_Fishing:CatchLog", src, item)
end)

RegisterServerEvent('NW_fishing:sv_sellfish', function(lootTable,legal, clientPass)
	if clientPass ~= password then return end
    local src = source
    local xPlayer = QBCore.Functions.GetPlayer(src)
	local pay = 0
	local _lootTable = lootTable
	if legal then

        for i,v in pairs(_lootTable) do
			if xPlayer.Functions.GetItemByName(i) ~= nil then
            	if v.legal == true then
            	    _lootTable[i].amount = xPlayer.Functions.GetItemByName(i).amount
					pay = pay + (v.price * v.amount)
					if v.amount > 0 then
						TriggerEvent("NW_Fishing:SellLog", src, i, v.amount, pay)
						xPlayer.Functions.RemoveItem(i, v.amount)
					end
            	end
			end
        end
    else
        for i,v in pairs(_lootTable) do
			if xPlayer.Functions.GetItemByName(i) ~= nil then
            	if v.legal == false then
            	    _lootTable[i].amount = xPlayer.Functions.GetItemByName(i).amount
					pay = pay + (v.price * v.amount)
					if v.amount > 0 then
						TriggerEvent("NW_Fishing:SellLog", src, i, v.amount, pay)
						xPlayer.Functions.RemoveItem(i, v.amount)
					end
            	end
			end
        end
    end
	if pay ~= 0 then
		exports.ox_inventory:AddItem(source, 'money',pay)
		TriggerClientEvent("NW_Fishing:Notify", src, Config.locale["money_add"]..tostring(pay), true)
	else
		TriggerClientEvent("NW_Fishing:Notify", src, Config.locale["nothing_sell"])
	end
end)