-- ==========================FireFighter Job==========================
-- ===============================By Wick===============================
-- ======================================================================
Config = {}

Config.JobName = 'ambulance'
Config.UseBlips = true -- is you use my Stations Blips set it to true or false
Config.FuelSystem = 'cdn-fuel'

-- for firescript (get it here: https://github.com/Wick89/FirescriptAddons )
-- is you dont have any firehose set it to true or false is you have
Config.MYHose = true
Config.MYTools = "FireTools" -- "MYTools" (WIP) so use FireTools for now
Config.PlaySound = true -- Sound Oxygen / flashlight set it to true or false
Config.hydrant = {200846641, 687935120, -366155374, -97646180} -- hydrant on map
Config.Isconsumables = false -- if you don't want to use ScbaGear as items set it to false or true is you will
Config.ChangeOutfitOnvehicle = false -- if you don't want to use ChangeOutfit in vehicle set it to false or true is you will (ONLY FOR qb-clothing)

-- Fire Functions as Fireproof and Smokeproof (use SmokeproofZone) otherwise everyone can lose their lives as smelter, fireplaces 
-- ( Is Smokeproof are on true will disable the entire functionality )
Config.Smokeproof = false
Config.SmokeproofZone = {
    ["1"] = {
        firezone = vector3(1215.83, -1518.94, 34.7),
        width = 16,
        length = 19,
    },
}

-- Config of vehicles players can interact with
Config.Vehicles = {
    "firetruk",
	"fireone",
    "velocityeng",
    "qrescue",
    "afiretruck"
}

Config.AuthorizedVehicles = {
    --[[ add it example
    [8] = {   -- RANK
        ["modelName"] = "gameName", 
        ["firetruk"] = "Engine 1",
        ["example"] = "Engine 2",
    },  --]]    
	-- Recruit
	[0] = {
		["e450b"] = "AMBULAN",
	},
	-- Paramedic
	[1] = {
		["e450b"] = "E450b",
        ["3500hdambo"] = "3500H",
	},
	-- Doctor
	[2] = {
		["e450b"] = "AMBULAN",
        ["3500hdambo"] = "AMBULAN",
        ["ems2020fpiu"] = "EMS 2020",
	},
	-- Surgeon
	[3] = {
        ["ems2020fpiu"] = "EMS 2020",
        ["unraptor17bb"] = "UnRaptor",
        ["lsfdfpiu"] = "Fire chief",
	},
	-- EMS Chief
	[4] = {
        ["e450b"] = "AMBULAN",
        ["3500hdambo"] = "AMBULAN",
        ["unraptor17bb"] = "UnRaptor",
        ["ems2020fpiu"] = "EMS chief",
        ["lsfdfpiu"] = "Fire chief",

	},
    -- Firefighter
    [5] = {
        ["fireone"] = "Engine 1",
        ["velocityeng"] = "Engine 2",
        ["afiretruck"] = "Engine 3",
    },
    -- Sergeant
    [6] = { 
        ["fireone"] = "Engine 1",
        ["velocityeng"] = "Engine 2",
		["afiretruck"] = "Engine 3",
        ["axtladder"] = "Ladder 1",
        ["qrescue"] = "qrescue",
    },
    -- Lieutenant    
    [7] = {
        ["fireone"] = "Engine 1",
        ["velocityeng"] = "Engine 2",
		["afiretruck"] = "Engine 3",
        ["axtladder"] = "Ladder 1",
		["qrescue"] = "qrescue",
        ["firesilv17"] = "Battalion",    
    }, 
    -- Fire Chief    
    [8] = {   
        ["fireone"] = "Engine 1",
        ["velocityeng"] = "Engine 2",
		["afiretruck"] = "Engine 3",
        ["axtladder"] = "Ladder 1",
		["qrescue"] = "qrescue",
        ["ems2020fpiu"] = "EMS chief",
        ["lsfdfpiu"] = "Fire chief",
    },      
}

Config.VehicleExtras = {
    ["car1"] = { --- Model name
        ["extras"] = {
            ["1"] = true, -- on/off
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = true,
            ["6"] = true,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 1,
    },
    ["lsfdfpiu"] = {
        ["extras"] = {
            ["1"] = false,
            ["2"] = true,
            ["3"] = true,
            ["4"] = true,
            ["5"] = false,
            ["6"] = false,
            ["7"] = true,
            ["8"] = true,
            ["9"] = true,
            ["10"] = true,
            ["11"] = true,
            ["12"] = true,
            ["13"] = true,
        },
		["livery"] = 1,
    }
}

-- your EUP setup here
Config.turnout = {
    ['suitpants'] = {
        ['female'] = {
            item = 78,
             [78] = true, -- for see you have pants on   
            texture = 0,
        },
        ['male'] = {
            item = 158, 
            [158] = true,
            texture = 0
        }
    },
    ['scba'] = {
        ['female'] = {
            item = 276,
            [276] = true,
            texture = 0
        },
        ['male'] = {
            item = 173, 
            [173] = true,
            texture = 0
        }
    },
    ['suittop'] = {
        ['female'] = {
            item = 437, 
            [437] = true,
            texture = 0
        },
        ['male'] = {
            item = 423, 
            [423] = true,
            texture = 0
        }
    },
    ['suithat'] = {
        ['female'] = {
            item = 148,
            texture = 0
        },
        ['male'] = {
            item = 60,
            texture = 0
        }
    },
    ['suitshoes'] = {
        ['female'] = {
            item = 75,
            texture = 0
        },
        ['male'] = {
            item = 22,
            texture = 0
        }
    },
    ['arms'] = {
        ['female'] = {
            item = 212,
            texture = 5
        },
        ['male'] = {
            item = 170,
            texture = 0
        }
    },
}

-- stations Locations on map and Vehicles spawn example
Config.Locations = {
    ["stations"] = {
        -- example
        -- Rockford Station
        {
            coords = vector4(-633.8, -101.22, 38.05, 114.82), -- ped for NPC
            spawn = vector4(-645.96, -112.16, 37.9, 118.87), -- Vehicles spawn
            -- stations blip
            label = "Rockford Station 1",  -- label for blip
            blipid = 686, -- id for blip
        },
        -- Sandy
        {
            coords = vector4(1681.43, 3596.74, 36.48, 212.09),
            spawn = vector4(1693.86, 3590.73, 36.53, 215.63),
           -- stations blip
            label = "Fire Dept 32", 
            blipid = 717,
        },
        -- Davis Fire DEPT
        {
            coords = vector4(219.39, -1651.29, 29.82, 159.25),
            spawn = vector4(202.75, -1676.46, 29.8, 49.09),
            -- stations blip
            label = "Davis Fire Dept 18", 
            blipid = 703,
        },
        -- Pillbox
        {
            coords = vector4(338.05, -586.37, 28.8, 60.02),
            spawn = vector4(326.71, -572.47, 28.8, 330.76),
            -- stations are in Pillbox<!
            --blipid = 47,
        },
        -- Fire Dept 7
        {
            coords = vector4(1193.38, -1495.59, 34.84, 268.58),
            spawn = vector4(1197.02, -1506.51, 34.69, 87.45),
            -- stations blip
            label = "Fire Dept 7",
            blipid = 692,
        },
    },
    ["Duty"] = { 
        vector3(-630.33, -124.83, 39.22), -- Rockford Station -- example
    },
    -- building stash
    ["stash"] = { 
        vector3(-625.01, -111.28, 45.5), -- Rockford Station -- example
    },  
}
--[[
    Items are items but it is also into vehicles
    setup in stash to have it in building
--]]
Config.Items = {
    label = "Truck Tools",
    slots = 30,
    items = {
        [1] = {
            name = "weapon_fireextinguisher",
            price = 0,
            amount = 2,
            info = { },
            type = "item",
            slot = 1,
            authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
        },
        [2] = {
            name = "weapon_wrench",
            price = 0,
            amount = 2,
            info = { },
            type = "weapon",
            slot = 2,
            authorizedJobGrades = {5, 6, 7, 8}
        },
        [3] = {
            name = "firstaid",
            price = 0,
            amount = 6,
            info = { },
            type = "item",
            slot = 3,
            authorizedJobGrades = {1, 2, 3, 4, 5, 6, 7, 8, 9}
        },
        -- for FireTools (buy here: https://store.londonstudios.net/category/resources )
        [4] = {
            name = "stabilisers",
            price = 0,
            amount = 5,
            info = { },
            type = "item",
            slot = 4,
            authorizedJobGrades = {5, 6, 7, 8}
        },
        -- for FireTools (buy here: https://store.londonstudios.net/category/resources )
        [5] = {
            name = "fan",
            price = 0,
            amount = 2,
            info = { },
            type = "item",
            slot = 5,
            authorizedJobGrades = {5, 6, 7, 8}
        },
    }
}
wk = {}

wk.PageSep = "-"
wk.DeptName = "Los Santos Fire"
wk.DefaultDetails = "Report to the Fire Station"
wk.WaitTime = 7500

-- Do not edit this line (if you don't know what you are doing)
wk.Tones = {"medical", "rescue", "fire", "other"}
wk.Stations = {} 
table.insert(wk.Stations, {Name = "pb", Loc = vector3(-379.53, 6118.32, 31.85), Radius = 800, Siren = "siren1"}) -- Paleto Bay
table.insert(wk.Stations, {Name = "fz", Loc = vector3(-2095.92, 2830.22, 32.96), Radius = 1000, Siren = "siren2"}) -- Fort Zancudo
table.insert(wk.Stations, {Name = "ss", Loc = vector3(1691.24, 3585.83, 35.62), Radius = 500, Siren = "siren1"}) -- Sandy Shores
table.insert(wk.Stations, {Name = "rh", Loc = vector3(-635.09, -124.29, 39.01), Radius = 60, Siren = "siren3"}) -- Rockford Hills
table.insert(wk.Stations, {Name = "els", Loc = vector3(1193.42, -1473.72, 34.86), Radius = 80, Siren = "siren4"}) -- East Los Santos
table.insert(wk.Stations, {Name = "sls", Loc = vector3(199.83, -1643.38, 29.8), Radius = 80, Siren = "siren4"}) -- South Los Santos
table.insert(wk.Stations, {Name = "dpb", Loc = vector3(-1183.13, -1773.91, 4.05), Radius = 400, Siren = "siren1"}) -- Del Perro Beach
table.insert(wk.Stations, {Name = "lsia", Loc = vector3(-1068.74, -2379.96, 14.05), Radius = 500, Siren = "siren2"}) -- LSIA
