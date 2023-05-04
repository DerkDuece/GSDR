function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('0x984F138E', '2014 Dodge Charger')
  AddTextEntryByHash("-1739648114", "2014 Dodge Charger")
  AddTextEntry('bmwsr', 'BMW SR Modified')
  AddTextEntry('bmwsrn', 'BMW SRN Modified')

  AddTextEntry('0xB58F4E0E', 'Crown Vic Police Interceptor')
  AddTextEntryByHash("-1248899570", "Crown Vic Police Interceptor")

  AddTextEntry('0xD1390561', 'Ford Explorer')
  AddTextEntryByHash("-784792223", "Ford Explorer")

  AddTextEntry('0x5D191D1B', 'Ford Taurus')
  AddTextEntryByHash("1561926939", "Ford Taurus")

  AddTextEntry('0x8B59F99C', 'Chevrolet Tahoe')
  AddTextEntryByHash("-1957037668", "Chevrolet Tahoe")

  AddTextEntry('0x789BD420', '2016 Dodge Charger')
  AddTextEntryByHash("2023478304", "2016 Dodge Charger")

  AddTextEntry('0xFBD201A0', 'Dodge Ram 2500')
  AddTextEntryByHash("-70123104", "Dodge Ram 2500")

  AddTextEntry('0x29835D02', 'Chevrolet Silverado')
  AddTextEntryByHash("696474882", "Chevrolet Silverado")

end)