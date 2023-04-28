Config = {}

Config.Lan = 'en' -- Language you want to use
Config.Core = 'qbox' -- If you renamed the qb-core folder, change it here too

-- Resources
Config.Notify = 'ox' -- Which notify system do you want to use: 'qb', 'okok', or 'ox'? 
Config.Menu = 'ox' -- Which menu system do you want to use: 'qb' or 'ox'?
Config.Text = 'ox' -- Which draw-text system do you want to use: 'qb' or 'ox'? 
Config.Target = 'ox' -- Which target system do you want to use: 'qb' or 'ox'?
Config.Fuel = 'cdn-fuel' -- Which fuel system are you using: 'LegacyFuel', 'ps-fuel', or 'cdn-fuel'?

-- Cutscene
Config.UseLamarPart = true -- If set as false, Lamar's cutscene segment will be excluded
Config.EnableCommand = false -- Test efficiently - no need to create multiple characters with this command
Config.Command = 'cutscene' -- Command to start the cutscene 
Config.ToggleApartment = true -- For optimal use of qb-apartment, set it to true and modify the apartment file as instructed at https://3rror-hub.gitbook.io/docementation/qbcore/3h-cutscene/modifications
Config.BlendTaxi = true -- If set to true, the player will be automatically transported to the taxi immediately after the cutscene ends
Config.StatCoords = vector4(-1042.49, -2746.0, 21.36, 326.91) -- Coordinates where the player will be sent after the cutscene is ended if Config.BlendTaxi is false
Config.EnableMessage = true -- Welcome your new players with a warm greeting
Config.Message = "Hello, Welcome to Gold Standard"

-- Airport Ped
Config.EnablePed = true -- If Config.EnablePed is false, it will disable/despawn the ped with AI-taxi and rental menu 
Config.PedCoords = vector4(-1032.48, -2735.74, 20.17, 112.18) -- Coordinates of the ped
Config.PedModel = "u_m_m_rivalpap" -- Model of the ped. Other model lists can be found at https://docs.fivem.net/docs/game-references/ped-models/

-- AI-Taxi 
Config.TaxiMenu = true -- If set to false, it will hide the taxi option from the airport ped menu. Ignore if Config.EnablePed is false. 
Config.SendMail = true -- If set to true and Config.BlendTaxi is false, it will send a taxi's info mail to the player 
Config.Plate = "3RRORHUB" -- Number plate of the taxi. A maximum of 8 characters (numbers/alphabets) is allowed.
Config.Driver = "u_m_y_proldriver_01" -- Ped model of the taxi driver 
Config.DefaultTaxi = { 
	Model = "taxi", -- Default taxi model. Ignore if Config.BlendTaxi is false.
	Price = "Free", -- For deducting any amount, put the value here. For example:  Price = 200
	ChangeColor = false, -- Change taxi's colour  
	Primary = 0, -- Primary colour 
	Secondary = 88, -- Secondary colour   
}
Config.Taxis = {  -- Available taxi models. You can add as many as you want.
	-- Label: The name that will be displayed on the taxi menu.
	-- Model: Spawn code of the taxi. Currently supports 2,3,4 wheeler vehicles i.e. Cars & Bikes (Land Vehicles).
	-- Price: Amount required to take the taxi (not fare). Can be made free by setting Price = "Free".
	-- ChangeColor: Change colour of the taxi.
	-- Primary: Primary colour of the taxi.
	-- Secondary: Secondary colour of the taxi.
	-- Image: Image of the taxi. Currently supported only if Config.Menu = 'ox'.
	[1] = { 
		Label = "Free Taxi",  
		Model = "emperor", 
		Price = "Free", 
		ChangeColor = true,  
		Primary = 0,  
		Secondary = 88, 
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096768812294099104/image.png", 
	},
	[2] = { 
		Label = "Normal Taxi",  
		Model = "taxi", 
		Price = 500, 
		ChangeColor = false,  
		Primary = 0,  
		Secondary = 88, 
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096768745613041725/image.png", 
	},
	[3] = { 
		Label = "Premium Taxi",  
		Model = "jubilee", 
		Price = 1000, 
		ChangeColor = false,  
		Primary = 0,  
		Secondary = 88,
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096768877800722585/image.png",  
	},
}
Config.DropLoc = { -- Available dropoff locations. You can add as many as you want.
	-- Label: the name displayed on the taxi menu
	-- Fare: the taxi fare (set to "Free" to make it free)
	-- Coord: the dropoff coordinates
	-- Image: the image of the taxi (currently only supported if Config.Menu is set to 'ox')
	[1] = { 
		Label = "CityHall", 		   	          
		Fare = "Free", 
		Coord = vector4(-236.51, -988.75, 28.75, 160.13), 
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096725262223290480/image.png", 
	},
	[2] = { 
		Label = "Integrity Way Apartment",      
		Fare = 100, 
		Coord = vector4(249.8, -644.05, 39.35, 336.88),   
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096718553991893132/image.png", 
	},
	[3] = { 
		Label = "So. Rockford Drive Apartment", 
		Fare = 100, 
		Coord = vector4(249.8, -644.05, 39.35, 336.88),   
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096717207389614110/image.png", 
	},
	[4] = { 
		Label = "Morningwood Blvd Apartment", 
		Fare = 100, 
		Coord = vector4(-1287.53, -398.46, 35.56, 209.35),   
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096717914834477106/image.png", 
	},
	[5] = { 
		Label = "Tinsel Towers Apartment", 
		Fare = 100, 
		Coord = vector4(-648.81, 28.47, 38.8, 357.26),   
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096724182064173076/image.png", 
	},
	[6] = { 
		Label = "Fantastic Plaza Apartment", 
		Fare = 100, 
		Coord = vector4(300.06, -1077.5, 28.91, 357.79),   
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096724830549712936/image.png", 
	},
}
Config.TaxiSpawn = { 
	-- Coordinates where the taxi will spawn (the locations are random)
	-- You can change or edit the coordinates, but it is recommended not to add or remove more than 4 coordinates
	{Coords = vector4(-1013.06, -2734.99, 13.27, 238.1)},
	{Coords = vector4(-1023.82, -2728.57, 13.29, 238.77)},
	{Coords = vector4(-1040.57, -2719.0, 13.29, 239.87)},
	{Coords = vector4(-1051.72, -2712.87, 13.27, 240.68)}
}
Config.BlendSpawn = { 
	-- Coordinates where the taxi will spawn if Config.BlendTaxi = true to avoid collision while spawning.
	-- Ignore if Config.BlendTaxi = false
	-- You can change or edit the coordinates, but it is recommended not to add or remove more than 13 coordinates.
	{Coords = vector4(-1019.99, -2490.69, 13.29, 148.39)},
	{Coords = vector4(-1026.62, -2501.35, 13.27, 148.47)},
	{Coords = vector4(-1070.71, -2578.55, 13.3, 147.78)},
	{Coords = vector4(-1076.69, -2589.3, 13.3, 149.02)},
	{Coords = vector4(-1023.78, -2489.97, 19.69, 149.69)},
	{Coords = vector4(-1030.16, -2500.6, 19.68, 148.44)},
	{Coords = vector4(-1036.01, -2510.94, 19.69, 147.28)},
	{Coords = vector4(-1044.22, -2524.92, 19.68, 144.49)},
	{Coords = vector4(-1050.47, -2536.17, 19.69, 146.99)},
	{Coords = vector4(-1056.24, -2546.15, 19.69, 144.95)},
	{Coords = vector4(-1064.46, -2560.15, 19.69, 145.99)},
	{Coords = vector4(-1070.89, -2571.44, 19.69, 148.51)},
	{Coords = vector4(-1076.86, -2581.83, 19.69, 150.07)}
}

-- Rental
Config.RentalMenu = true -- If set to false, it will hide the taxi option from the airportped menu. Ignore if Config.EnablePed is false.
Config.SafetyDeposit = 0.25 -- Percentage that will be deducted after the rental vehicle is returned.
Config.RentalSpawn = vector4(-1030.53, -2732.65, 19.64, 238.7) -- Coordinates where the rental vehicle will spawn.
Config.WrapPlayer = false -- Set WrapPlayer to false to avoid direct teleportation into the rental vehicle.
Config.RentalVehicles = { -- Available rental vehicles. You can add as many as you want.
	-- Label: The name that will be displayed on the rental menu.
	-- Model: Spawn code of the vehicle.
	-- Price: Rental fee.
	-- Image: Image of the taxi. Currently supported only if Config.Menu is 'ox'.
	[1] = { 
		Label = "Bicycle", 
		Model = "scorcher", 
		Price = 300, 
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096766676101496902/image.png", 
	},
	[2] = { 
		Label = "SUV", 	 
		Model = "xls",      
		Price = 600,
		Image = "https://cdn.discordapp.com/attachments/1090968541534109756/1096766577099161660/image.png",  
	},
}

-- Airport Blip
Config.Blip = {
	Enable = false, -- Enables the blip
	Coords = vector3(-1037.88, -2738.34, 20.17), -- Coordinates of the blip
	Sprite = 423, -- Type of the airport blip | You can get the blip codes from here: https://docs.fivem.net/docs/game-references/blips/
	Scale = 0.7, -- Size of the airport blip
	Colour = 3, -- Color of the blip | You can get the color codes from here: https://docs.fivem.net/docs/game-references/blips/
	Text = "LS Airport", -- Name of the airport blip 	
}

Lang = {}


