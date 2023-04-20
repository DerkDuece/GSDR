-- This function sends a message to the player via mail when they take a taxi. If your mail function looks different, you can configure it yourself.
function TaxiMessage(modelCode, licensePlate) 
    TriggerServerEvent('qb-phone:server:sendNewMail', {
        sender = Lang[Config.Lan].mail["sender"],
        subject = Lang[Config.Lan].mail["subject"],
        message = Lang[Config.Lan].mail["greet"]..",<br><br>"..Lang[Config.Lan].mail["model"]..' - <b>'..modelCode.."</b><br><br>"..Lang[Config.Lan].mail["plate"]..' - <b>'..licensePlate.."</b><br><br><b>"..Lang[Config.Lan].mail["location"].."</b>",
    })
end

-- Your vehicle keys function/trigger goes here.
function GetVehicleKeys(vehPlate)
    TriggerEvent("vehiclekeys:client:SetOwner", vehPlate)
end

-- Change taxi driver's driving style. Some drive styles are given below:
-- 0: Normal driving
-- 786603: Slightly cautious driving
-- 786468: Avoiding traffic driving
-- 1074528293: Rushed driving
-- 262144: Off-road driving
function ChangeDriveStyle(driver)
    local Style = 0 -- Change the style here!
    SetDriveTaskDrivingStyle(driver, Style)
end



