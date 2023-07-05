-- This function sends a message to the player via mail when they take a taxi. If your mail function looks different, you can configure it yourself.
function TaxiMessage(modelCode, licensePlate) 
    TriggerServerEvent('qb-phone:server:sendNewMail', {
        sender = Lan[Locales.Lang].mail["sender"],
        subject = Lan[Locales.Lang].mail["subject"],
        message = Lan[Locales.Lang].mail["greet"]..",<br><br>"..Lan[Locales.Lang].mail["model"]..' - <b>'..modelCode.."</b><br><br>"..Lan[Locales.Lang].mail["plate"]..' - <b>'..licensePlate.."</b><br><br><b>"..Lan[Locales.Lang].mail["location"].."</b>",
    })
end

-- Your taxi keys function/trigger goes here.
function GetVehicleKeys(netID, vehPlate)
    TriggerEvent("vehiclekeys:client:SetOwner", vehPlate)
end

-- Your taxi lock function/trigger goes here.
function LockDoors(netID, taxi)
    SetVehicleDoorsLocked(taxi, 2)
    SetVehicleDoorsLocked(taxi, 4)
end

-- Your taxi unlock function/trigger goes here.
function UnlockDoors(netID, taxi)
    SetVehicleDoorsLocked(taxi, 1)
end

-- Your revive function/trigger goes here. 
-- This revive players in case they bleed out or die due to any map bug. It serves as a safety measure to ensure that players are healed up and able to continue playing. 
-- By default, the revive trigger from the qb-ambulancejob has been incorporated into this feature
function HealPlayer(player)
    TriggerEvent("hospital:client:Revive")
end




