function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end
  
--ncrp-test-pd-vehicle-names

Citizen.CreateThread(function()
  AddTextEntry('0xAB9D007D', '2005 Ford Crown Victoria')
  AddTextEntryByHash("287919213", "2005 Ford Crown Victoria")

  AddTextEntry('0x8D2D6827', '2006 Chevrolet Tahoe')
  AddTextEntryByHash("2368563239", "2006 Chevrolet Tahoe")

  AddTextEntry('0x10FFB813', '2011 Chevrolet Imapla')
  AddTextEntryByHash("285194259", "2011 Chevrolet Impala")
  
  AddTextEntry('0xC022CBD5', '2011 Chevrolet Caprice')
  AddTextEntryByHash("3223505877", "2011 Chevrolet Caprice")
  
  AddTextEntry('0x7BEEBC7F', '2016 Ford Taurus')
  AddTextEntryByHash("207924339", "2016 Ford Taurus")
 
  AddTextEntry('0x0A7F29D9', '2013 Chevrolet Tahoe')
  AddTextEntryByHash("176105945", "2013 Chevrolet Tahoe")
  
  AddTextEntry('0x21954B11', '2017 Chevrolet Tahoe')
  AddTextEntryByHash("563432209", "2017 Chevrolet Tahoe")
  
  AddTextEntry('0x1B2F301F', '2019 Dodge Durango')
  AddTextEntryByHash("456077343", "2019 Dodge Durango")
  
  AddTextEntry('0x7BE3CC91', '2017 Ford Explorer')
  AddTextEntryByHash("2078526609", "2017 Ford Explorer")
  
  AddTextEntry('0x0E40B3F70', '2018 Dodge Charger')
  AddTextEntryByHash("3825942384", "2018 Dodge Charger")
  
  

end)