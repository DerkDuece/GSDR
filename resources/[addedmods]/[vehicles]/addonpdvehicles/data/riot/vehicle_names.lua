function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('0xB822A1AA', 'Lenco Bearcat')
  AddTextEntryByHash("-1205689942", "Lenco Bearcat")

end)