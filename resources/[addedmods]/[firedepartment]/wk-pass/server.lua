-- Master Pass Alarm storage variable
local PassAlarms = {}

RegisterServerEvent("wk-pass:Server")
AddEventHandler("wk-pass:Server", function(Bool, Remove, Request)
	if Bool then
		if Remove then
			if PassAlarms[source] then
				PassAlarms[source] = nil
			end
		end
	else
		if not PassAlarms[source] then
			PassAlarms[source] = true
		end
	end

	TriggerClientEvent("wk-pass:Bounce:ServerValues", -1, PassAlarms)
	TriggerClientEvent("wk-pass:Bounce:NUI", -1, Request, source)
end)