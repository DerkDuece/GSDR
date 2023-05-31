local QBCore = Config.Core


QBCore.Functions.CreateUseableItem("fishingrod", function(source, item)
	TriggerClientEvent('NW_fishing:StartFish', source)
end)

QBCore.Functions.CreateUseableItem("seaturtle", function(source, item) --this is the event that turns seaturtles into illegal bait. you can copy and paste this event for other items to craft other types of bait. example below
	TriggerClientEvent('NW_fishing:cutBait', source, "illegalbait", "seaturtle", 2)
end)

--QBCore.Functions.CreateUseableItem('Shark', function(source, item) --shark here is the item that i use
--  --in here you can even add logic for an item check or whatever you want. for example if you wanted to make sure they had a knife on them before running the cut bait event.--
--	TriggerClientEvent('NW_fishing:cutBait', source, "illegalbait", 'shark', 2) -- illegalbait is the item that the shark would turn into when i use the shark. use 1 shark -> get 2 illegalbait
--end)

for i,v in pairs(Config.BaitTypes) do -- DONT TOUCH THIS EVENT. this will take your list of baits and set them up to swap your current bait type. if you change this, the script wont work properly.
    QBCore.Functions.CreateUseableItem(v, function(source, item)
        TriggerClientEvent('NW_fishing:setBaitType', source, v)
    end)
end

 --sends over the source, item name, amount sold, and also the pay for the amount total
 RegisterNetEvent("NW_Fishing:SellLog", function(source, item, amount, pay) --DONT CHANGE EVENT NAME. you can use this for your logs if you want. otherwise just leave empty. this is a server event
    --{server side logs logic here}
  end)
  
   --sends over the source, item caught
   RegisterNetEvent("NW_Fishing:CatchLog", function(source, item) --DONT CHANGE EVENT NAME. this is a server event
    --{server side logs logic here}
  end)