Config = {}

Config.Debug = true

Config.Language = "en" -- Language to use.

Config.RenderDistance = 100.0 -- Scenario display Radius.

Config.InteractDistance = 2.0 -- Interact Radius

Config.UseTarget = true -- When set to true, it'll use targeting instead of key-presses to interact.

Config.NoModelTargeting = true -- When set to true and using Target, it'll spawn a small invisible prop so you can third-eye when no entity is defined.

Config.Marker = { -- This will only be used if enabled, not using target, and no model is defined in the interaction.
    enabled = true,
    id = 2,
    scale = 0.25, 
    color = {255, 255, 255, 127}
}

Config.XPEnabled = false -- When set to true, this will enable Pickle's XP compatibility, and enable xp rewards.

Config.XPCategories = { -- Registered XP Types for Pickle's XP.
    ["landscaping"] = {
        label = "Landscaping", 
        xpStart = 1000, 
        xpFactor = 0.2, 
        maxLevel = 100
    },
}

Config.Default = {
    respawnTimer = 300, -- Time for respawning a scenario (put this inside a scenario to change it's timer).
    showScenarioBlip = true, -- Show scenario blip on the map so landscapers can find work.
    rewards = { -- Default rewards for completing a scenario, these are split amongst players (put this inside a scenario to change it's rewards).
        {type = "money", amount = 200}
    }
}

Config.GiveKeys = function(vehicle)
    local plate = GetVehicleNumberPlateText(vehicle)
    TriggerServerEvent('qb-vehiclekeys:server:AcquireVehicleKeys', plate)
end

Config.Lawnmower = {
    obstacleTimeout = 5, -- Disable mowing for 5 seconds when a rock is hit.
    vehicle = {
        enabled = true,
        model = `mower`,
        particle = {
            offset = vector3(0.8, 0.0, -0.4), 
            rotation = vector3(0.0, 0.0, 0.0)
        }
    },
    walking = {
        enabled = true,
        model = `prop_lawnmower_01`,
        boneID = 57005,
        offset = vector3(0.90, -0.14, -0.77),
        rotation = vector3(195.0, 210.0, -80.0),
        particle = {
            offset = vector3(0.0, 0.0, 0.0), 
            rotation = vector3(-90.0, 0.0, 0.0)
        }
    }
}

Config.Leafblower = {
    enabled = true,
    model = `prop_leaf_blower_01`,
    boneID = 57005,
    offset = vector3(0.1, 0.0, 0.0),
    rotation = vector3(-90.0, -65.0, 0.0),
    particle = {
        offset = vector3(0.9, 0.0, -0.25), 
        rotation = vector3(0.0, 0.0, 0.0)
    }
}

Config.Pitcher = {
    time = 5, -- Time to finish watering a bush.
}

Config.Workplace = { -- Where landscapers can start work, and get their required tools.
    duty = {
        coords = vector3(-1461.7710, -686.8022, 27.4666), -- Clock-in / out
        groups = nil, -- Set to nil for all access, or add a custom job like this: { ["landscaping"] = 0 }
        blip = { -- Set to nil for no blip.
            label = "Landscaping Company",
            id = 479,
            scale = 0.85,
            color = 2,
            display = 4,
        },
    },
    store = {
        coords = vector3(-1464.3055, -683.6722, 26.4667),
        items = {
            {
                label = "Lawnmower",
                item = "lawnmower",
                price = 2000,
            },
            {
                label = "Leafblower",
                item = "leafblower",
                price = 2000,
            },
            {
                label = "Garden Pitcher",
                item = "garden_pitcher",
                price = 100,
            },
        },
        blip = { -- Set to nil for no blip.
            label = "Landscaping Store",
            id = 479,
            scale = 0.85,
            color = 2,
            display = 4,
        },
    },
    garage = {
        coords = vector3(-1443.0516, -690.8935, 26.3128),
        spawn = {
            coords = vector3(-1450.2153, -684.7064, 26.3662),
            heading = 306.1427,
        },
        vehicles = {
            {
                label = "Pickup Truck",
                model = `bison`,
                price = 100,
            },
            {
                label = "Lawnmower",
                model = `mower`,
                price = 100,
            },
            {
                label = "Lawnmower Trailer",
                model = `boattrailer`,
                extras = {
                    [1] = 0,
                    [2] = 1,
                },
                price = 100,
            },
        },
        blip = { -- Set to nil for no blip.
            label = "Landscaping Garage",
            id = 479,
            scale = 0.85,
            color = 2,
            display = 4,
        },
    },
    outfit = {
		male = {
            ['arms'] = 19,
            ['tshirt_1'] = 15, 
            ['tshirt_2'] = 0,
            ['torso_1'] = 56, 
            ['torso_2'] = 0,
            ['bproof_1'] = 0,
            ['bproof_2'] = 0,
            ['decals_1'] = 0, 
            ['decals_2'] = 0,
            ['chain_1'] = 0,
            ['chain_2'] = 0,
            ['pants_1'] = 7, 
            ['pants_2'] = 0,
            ['shoes_1'] = 56, 
            ['shoes_2'] = 0,
            ['helmet_1'] = 143, 
            ['helmet_2'] = 19,
        },
        female = {
            ['arms'] = 19,
            ['tshirt_1'] = 15, 
            ['tshirt_2'] = 0,
            ['torso_1'] = 56, 
            ['torso_2'] = 0,
            ['bproof_1'] = 0,
            ['bproof_2'] = 0,
            ['decals_1'] = 0, 
            ['decals_2'] = 0,
            ['chain_1'] = 0,
            ['chain_2'] = 0,
            ['pants_1'] = 7, 
            ['pants_2'] = 0,
            ['shoes_1'] = 56, 
            ['shoes_2'] = 0,
            ['helmet_1'] = 143, 
            ['helmet_2'] = 19,
        }
    }
}

Config.ScenarioBlip = { -- Landscaping work blip when enabled.
    label = "Landscaping Work",
    id = 365,
    scale = 0.85,
    color = 2,
    display = 4,
}

Config.Scenarios = { -- This is where you'll add work for landscapers to do.
    -- Mansion
    {
        type = "grass", -- Type of scenario.
        model = `prop_veg_grass_01_c`, -- Model of the scenario.
        coords = vector3(-1604.2740, 107.1936, 61.0744), -- Center of the scenario.
        radius = 6.0, -- Area of the scenario.
        size = 1.15, -- Size of each prop inside the area.
        offset = -0.75, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "leaves", -- Type of scenario.
        model = `ng_proc_leaves07`, -- Model of the scenario.
        coords = vector3(-1595.6570, 99.7478, 60.7871), -- Center of the scenario.
        radius = 2.0, -- Area of the scenario.
        spread = 50, -- Amount of leaves to place inside the area.
        offset = 0.02, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "bush", -- When watered, it replaces the unwatered plant with the watered plant.
        coords = vector3(-1599.0365, 90.3076, 60.8134), -- Center of the scenario.
        heading = 48.5044, -- Heading of the scenario.
        unwatered = {
            model = `prop_bush_dead_02`, -- Model of the scenario when unwatered.
            offset = -0.2, -- Offset of the Z-coordinate of each prop placed in the area.
        },
        watered = {
            model = `prop_bush_neat_05`, -- Model of the scenario when watered.
            offset = -0.2, -- Offset of the Z-coordinate of each prop placed in the area.
        },
        rewards = { -- Rewards for finishing the scenario.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "bush", -- When watered, it replaces the unwatered plant with the watered plant.
        coords = vector3(-1594.6431, 93.5099, 60.6486), -- Center of the scenario.
        heading = 48.5044, -- Heading of the scenario.
        unwatered = {
            model = `prop_bush_dead_02`, -- Model of the scenario when unwatered.
            offset = -0.2, -- Offset of the Z-coordinate of each prop placed in the area.
        },
        watered = {
            model = `prop_bush_neat_05`, -- Model of the scenario when watered.
            offset = -0.2, -- Offset of the Z-coordinate of each prop placed in the area.
        },
        rewards = { -- Rewards for finishing the scenario.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "obstacle", -- When ran over by either type of lawnmower, the lawnmower is destroyed.
        model = `prop_rock_5_smash1`, -- Model of the scenario.
        coords = vector3(-1605.2738, 106.0849, 61.0947), -- Center of the scenario.
        heading = 30.0077, -- Heading of the scenario.
        offset = -0.05, -- Offset of the Z-coordinate of the prop placed.
        rewards = { -- Rewards for finishing the scenario.
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    -- Lifeinvader
    {
        type = "grass", -- Type of scenario.
        model = `prop_veg_grass_01_c`, -- Model of the scenario.
        coords = vector3(-1115.9598, -266.6743, 39.0054), -- Center of the scenario.
        radius = 2.0, -- Area of the scenario.
        spread = 20, -- Amount of leaves to place inside the area.
        offset = -0.75, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    -- Burton Intersection
    {
        type = "grass", -- Type of scenario.
        model = `prop_veg_grass_01_c`, -- Model of the scenario.
        coords = vector3(-592.4904, -29.4992, 43.6042), -- Center of the scenario.
        radius = 7.0, -- Area of the scenario.
        spread = 40, -- Amount of leaves to place inside the area.
        offset = -0.75, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "grass", -- Type of scenario.
        model = `prop_veg_grass_01_c`, -- Model of the scenario.
        coords = vector3(-608.8917, -35.4217, 42.5946), -- Center of the scenario.
        radius = 7.0, -- Area of the scenario.
        spread = 40, -- Amount of leaves to place inside the area.
        offset = -0.75, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "leaves", -- Type of scenario.
        model = `ng_proc_leaves07`, -- Model of the scenario.
        coords = vector3(-631.2047, -35.7677, 41.5798), -- Center of the scenario.
        radius = 3.0, -- Area of the scenario.
        spread = 100, -- Amount of leaves to place inside the area.
        offset = 0.02, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    -- Vespucci Canals
    {
        type = "grass", -- Type of scenario.
        model = `prop_veg_grass_01_c`, -- Model of the scenario.
        coords = vector3(-1252.4867, -945.2944, 5.7757), -- Center of the scenario.
        radius = 7.0, -- Area of the scenario.
        spread = 40, -- Amount of leaves to place inside the area.
        offset = -0.75, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "leaves", -- Type of scenario.
        model = `ng_proc_leaves07`, -- Model of the scenario.
        coords = vector3(-1254.5767, -929.0537, 10.3674), -- Center of the scenario.
        radius = 2.0, -- Area of the scenario.
        spread = 50, -- Amount of leaves to place inside the area.
        offset = 0.02, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    -- Skate Park
    {
        type = "grass", -- Type of scenario.
        model = `prop_veg_grass_01_c`, -- Model of the scenario.
        coords = vector3(-1244.8353, -963.3270, 3.3944), -- Center of the scenario.
        radius = 10.0, -- Area of the scenario.
        spread = 100, -- Amount of leaves to place inside the area.
        offset = -0.75, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "leaves", -- Type of scenario.
        model = `ng_proc_leaves07`, -- Model of the scenario.
        coords = vector3(-938.9548, -767.0889, 16.5203), -- Center of the scenario.
        radius = 2.0, -- Area of the scenario.
        spread = 50, -- Amount of leaves to place inside the area.
        offset = 0.02, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "grass", -- Type of scenario.
        model = `prop_veg_grass_01_c`, -- Model of the scenario.
        coords = vector3(-946.6307, -757.4492, 18.6050), -- Center of the scenario.
        radius = 3.0, -- Area of the scenario.
        spread = 20, -- Amount of leaves to place inside the area.
        offset = -0.75, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
    {
        type = "grass", -- Type of scenario.
        model = `prop_veg_grass_01_c`, -- Model of the scenario.
        coords = vector3(-927.4852, -755.9402, 19.7077), -- Center of the scenario.
        radius = 6.0, -- Area of the scenario.
        spread = 40, -- Amount of leaves to place inside the area.
        offset = -0.75, -- Offset of the Z-coordinate of each prop placed in the area.
        rewards = { -- Rewards for finishing the scenario. Rewards are split amongst those that help clear it.
            {type = "money", amount = 650},
            {type = "xp", name = "landscaping", amount = 1000},
        }
    },
}