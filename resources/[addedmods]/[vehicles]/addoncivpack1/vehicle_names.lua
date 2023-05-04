function AddTextEntry(key, value)
	Citizen.InvokeNative(GetHashKey("ADD_TEXT_ENTRY"), key, value)
end

Citizen.CreateThread(function()
  AddTextEntry('0x228B2C6E', '1985 Ford LTD')
  AddTextEntryByHash("579546222", "1985 Ford LTD") --ltd85

  AddTextEntry('0xA1C527D2', '1980 Chevrolet Silverado')
  AddTextEntryByHash("-1580914734", "1980 Chevrolet Silverado") --bc90silv

  AddTextEntry('0x88BB7990', '1966 Chevrolet Nova')
  AddTextEntryByHash("-2000979568", "1966 Chevrolet Nova") --nova
  
  AddTextEntry('0xA44047E5', '1999 Mazda MX5 Miata')
  AddTextEntryByHash("2755676133", "1999 Mazda MX5 Miata")

  AddTextEntry('0x1CB78959', '2002 Mercedes S600 W220')
  AddTextEntryByHash("481790297", "2002 Mercedes S600 W220")
  
  AddTextEntry('0xC58058FF', '2016 Kia Sportage')
  AddTextEntryByHash("3313522943", "2016 Kia Sportage")
  
  AddTextEntry('0x82F0AE38', '2018 Jeep Grand Cherokee Trackhawk')
  AddTextEntryByHash("2196811320", "2018 Jeep Grand Cherokee Trackhawk")
  
  AddTextEntry('0x0CE53DFD', '2018 Audi RS3 Sportback')
  AddTextEntryByHash("216350205", "2018 Audi RS3 Sportback")
  
  AddTextEntry('0xB7247321', '2016 Volkswagen Golf R')
  AddTextEntryByHash("3072619297", "2016 Volkswagen Golf R")
  
  AddTextEntry('0x00877F8F', '1969 Dodge Charger')
  AddTextEntryByHash("8880015", "1969 Dodge Charger")
  
  AddTextEntry('0xF260EF37', '2006 Mitsubishi Evo IX')
  AddTextEntryByHash("40664438967", "2006 Mitsubishi Evo IX")
  
  AddTextEntry('0xAD196813', '2019 Jaguar F-Pace')
  AddTextEntryByHash("1390843885", "2019 Jaguar F-Pace")
  
  AddTextEntry('0x75363FB4', '1999 Nissan Silvia S15')
  AddTextEntryByHash("1966489524", "1999 Nissan Silvia S15")
   
  AddTextEntry('0xEB5E86CB', '2020 Audi A6 Avant')
  AddTextEntryByHash("346126645", "2020 Audi A6 Avant")
  
  AddTextEntry('0x8863B42F', '2020 Audi Q8')
  AddTextEntryByHash("2288235567", "2020 Audi Q8")
  
  AddTextEntry('0x47396C64', '2018 Dodge Charger SRT Hellcat')
  AddTextEntryByHash("1194945636", "2018 Dodge Charger SRT Hellcat")
  
  AddTextEntry('0x8C34D838', '1989 Nissan Skyline R32 GTR')
  AddTextEntryByHash("2352273464", "1999 Nissan Skyline R32 GTR")
  
  AddTextEntry('0x49D3AA8E', '1993 Ford Escort Cosworth')
  AddTextEntryByHash("1238608526", "1993 Ford Escort Cosworth")
  
  AddTextEntry('0xB2E546D3', '2017 Chevrolet Camaro ZL1 Widebody')
  AddTextEntryByHash("3001370323", "2017 Chevrolet Camaro ZL1 Widebody")
  
  AddTextEntry('0x13A9186C', '2017 BMW M5 F90')
  AddTextEntryByHash("329848940", "2017 BMW M5 F90")
  
  AddTextEntry('0x05F0DE8C', '2019 Mercedes X Class')
  AddTextEntryByHash("99671692", "2019 Mercedes X Class")
  
  AddTextEntry('0xAC4BCAE0', '2020 BMW M8')
  AddTextEntryByHash("2890648288", "2020 BMW M8")
  
  AddTextEntry('0x192896F1', '2020 Audi RS6')
  AddTextEntryByHash("422090481", "2020 Audi RS6")
  
  AddTextEntry('0xE7BAD4E1', '2017 BMW M6 Prior')
  AddTextEntryByHash("3887781089", "2017 BMW M6 Prior")
  
  AddTextEntry('0xDE921FD4', '2020 Audi RS6 C8')
  AddTextEntryByHash("3734118356", "2020 Audi RS6 C8")
  
  AddTextEntry('0x52FCC51B', '2020 Mercedes E63S')
  AddTextEntryByHash("1392297243", "2020 Mercedes E63S")
  
  AddTextEntry('0x4B1FFB77', '2020 Audi RS7')
  AddTextEntryByHash("1260387191", "2020 Audi RS7")  
  
  AddTextEntry('0x7D1D8B36', '2016 Mercedes C63S AMG')
  AddTextEntryByHash("2099088182", "2016 Mercedes C63S AMG")
  
  AddTextEntry('0xC57B1309', '2020 Mercedes E63S Brabus')
  AddTextEntryByHash("-981789943", "2020 Mercedes E63S Brabus")
  
  AddTextEntry('0x39633774', '2020 Porsche 911 922')
  AddTextEntryByHash("962803572", "2020 Porsche 911 922")
  
  AddTextEntry('0xF76F6090', '2020 Audi R8')
  AddTextEntryByHash("4151271568", "2020 Audi R8")
  
  AddTextEntry('0x7DE55093', '2017 Rolls Royce Wraith')
  AddTextEntryByHash("2112180371", "2017 Rolls Royce Wraith")
  
  AddTextEntry('0x63CE3C66', '2021 Nissan GTR 50')
  AddTextEntryByHash("1674460262", "2021 Nissan GTR 50")
  
  AddTextEntry('0xB4EF74BE', '2020 Bentley Bacalar')
  AddTextEntryByHash("3035591870", "2020 Bentley Bacalar")
  
  AddTextEntry('0x83885383', '2020 McLaren Speedtail')
  AddTextEntryByHash("-2088217725", "2020 McLaren Speedtail")
  
  AddTextEntry('0x9E603222', '1987 Ferrari F40')
  AddTextEntryByHash("2657104418", "1987 Ferrari F40")
  
  AddTextEntry('0x96C85A62', '2020 Lamborghini Sian Roadster')
  AddTextEntryByHash("2529712738", "2020 Lamborghini Sian Roadster")
  
  AddTextEntry('0x6A5C38D9', '2020 Koenigsegg Jesko')
  AddTextEntryByHash("1784428761", "2020 Koenigsegg Jesko")

  AddTextEntry('0xFC537C47', '1988 Oldsmobile DLT')
  AddTextEntryByHash("61637561", "1988 Oldsmobile DLT")

  AddTextEntry('0xD9011819', '2017 Koenigsegg Agera RS')
  AddTextEntryByHash("-654239719", "2017 Koenigsegg Agera RS")
  
  AddTextEntry('0x6B7A3F1C', '2016 Lamborghini Centenario R')
  AddTextEntryByHash("1803173660", '2016 Lamborghini Centenario R')
  
  AddTextEntry('0x771C5A1O', '2015 BWMW M4')
  AddTextEntryByHash("1998346768", "2015 BMW M4")
  
  AddTextEntry('0xA886AB0C', '1996 Nissan 180SX Type X')
  AddTextEntryByHash("-1467569396", "1996 Nissan 180SX Type X")
  
  AddTextEntry('0xACE4A08E', '2020 Mercedes AMG GTR Roadster')
  AddTextEntryByHash("-1394302834", "2020 Mercedes AMG GTR Roadster")

end)

