function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('0x64B34927', '2018 Camaro ZL1')
  AddTextEntryByHash("1689471271", "2018 Camaro ZL1")

end)