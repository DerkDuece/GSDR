function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('0x689F4EF1', 'BMW 1200R')
  AddTextEntryByHash("1755270897", "BMW 1200R")

end)