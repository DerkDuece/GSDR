Config = {} --Ignore.


Config.rewardItem = "coca_leaf"
Config.rewardItemheroin = "poppyresin"
Config.rewardshrooms = "shrooms"
Config.respawnTime = 150 -- Seconds
Config.cd = false ---- if you use cd-dispatch
Config.ps = true --- if you use ps dispatch
Config.gks = false -- true if you use gks, false if you use qb or renewed phone
Config.Dirty = 'marked_money' -- whatever you use for dirty money



------------- Cocaine locations
Config.makecokepowder = vector3(-2049.78, -1031.84, 8.97) --  where to take coca leaves to make powder
Config.cutcokeone = vector3(93.51, 3754.22, 40.77) -- cutting stage 1 coke with baking soda
Config.cutcoke2 = vector3(711.38, -969.46, 30.4) -- cuting stage two with baking soda
Config.cutcoke3 = vector3(-495.98, 188.95, 83.16) -- cutting stage three with baking soda
Config.bagcoke = vector3(90.31, 3745.46, 40.77) -- bag stage one
Config.bagcoke2 = vector3(706.07, -966.91, 30.41) -- bag stage two
Config.bagcoke3 = vector3(-492.51, 189.57, 83.16)
---------------- Crack locations
Config.makecrack = vector3(537.16, -1931.63, 24.99) -- make crack with baking soda with cut coke 1-3
Config.bagcrack = vector3(536.27, -1935.95, 24.99) ---  bag crack 1-3 stages
------------------------- LSD Locations
Config.lysergicacid = vector3(3539.33, 3660.05, 28.12) -- get lysergic acid
Config.diethylamide = vector3(3536.66, 3662.85, 28.12) -- get diethylamide
Config.gettabs = vector3(2482.3, 3722.59, 43.93) -- buy tab paper
Config.acidrefine = vector3(-1785.49, 439.74, 128.11) -- refine your acid
Config.buylsdlabkit = vector3(2328.99, 2571.5, 46.71) --  buy lab kit
Config.maketabs1 = vector3(3558.67, 3672.39, 28.12) -- make tabs 1
Config.maketabs2 = vector3(3561.14, 3673.05, 28.12) -- make tabs 2
Config.maketabs3 = vector3(3562.73, 3675.66, 28.12) -- make tabs 3
Config.maketabs4 = vector3(3559.8, 3675.91, 28.12) -- make tabs 4
Config.maketabs5 = vector3(3561.76, 3670.58, 28.12) -- make tabs 5
Config.maketabs6 = vector3(3561.38, 3668.42, 28.12) -- make tabs 6

------------------------- Heroin Locations
Config.dryplant = vector3(1390.02, 3608.81, 38.94) -- turn resin into powder
Config.buyheroinlabkit = vector3(438.48, 3570.55, 33.89) -- buy heroin lab kit
Config.cutheroinone = vector3(1389.7, 3603.43, 38.94) -- cut heroin stage 1-3 with baking soda
Config.fillneedle = vector3(1391.82, 3606.19, 38.94) -- fill needles with heroin

------------ XTC
Config.isosafrole = vector3(0, 0, 0) -- where to steal isosafrole
Config.mdp2p = vector3(1,1,1) -- where to steal mdp2p
Config.rawxtcloc = vector3(2,2,2) --  where to combine the 2 ingridents to make raw xtc
Config.makeunstampedwhite = vector3(3,3,3) -- where to make white unstamped
Config.makeunstampedred = vector3(4,4,4) --  where to make redunstamped
Config.makeunstampedorange = vector3(5,5,5) -- where to make orange unstamped
Config.makeunstampedblue = vector3(6,6,6) -- where to make blue unstamped
Config.stamp = vector3(7,7,7) --  where to stamp white people
Config.buypress = vector3(8,8,8) --  where to stamp white people

Config.CocaPlant = {
    [1] = {
        location = vector3(1474.25, -2643.87, 42.88),
        heading = 334.49,
        model = "prop_plant_01a"
    },
    [2] = {
        location = vector3(1472.35, -2649.3, 41.87),
        heading = 329.56,
        model = "prop_plant_01a"
    },
    [3] = {
        location = vector3(1475.7, -2652.9, 40.8),
        heading = 25.16,
        model = "prop_plant_01a"
    },
    [4] = {
        location = vector3(1481.0, -2654.99, 39.86),
        heading = 21.52,
        model = "prop_plant_01a"
    },
    [5] = {
        location = vector3(1480.9, -2660.63, 38.68),
        heading = 202.97,
        model = "prop_plant_01a"
    },
    [6] = {
        location = vector3(1477.18, -2666.53, 38.19),
        heading = 202.97,
        model = "prop_plant_01a"
    },
    [7] = {
        location = vector3(1477.58, -2670.82, 37.73),
        heading = 202.97,
        model = "prop_plant_01a"
    },
    [8] = {
        location = vector3(1476.56, -2675.82, 37.46),
        heading = 202.97,
        model = "prop_plant_01a"
    },
    [9] = {
        location = vector3(1474.8, -2680.19, 37.03),
        heading = 202.97,
        model = "prop_plant_01a"
    },
    [10] = {
        location = vector3(1471.52, -2685.0, 36.82),
        heading = 202.97,
        model = "prop_plant_01a"
    },
    [11] = {
        location = vector3(1462.82, -2676.58, 38.83),
        heading = 202.97,
        model = "prop_plant_01a"
    },
    [12] = {
        location = vector3(1461.31, -2667.74, 39.67),
        heading = 202.97,
        model = "prop_plant_01a"
    },
    [13] = {
        location = vector3(1456.3, -2647.61, 43.39),
        heading = 202.97,
        model = "prop_plant_01a"
    },
    [14] = {
        location = vector3(1453.65, -2641.56, 45.0),
        heading = 202.97,
        model = "prop_plant_01a"
    },
}


Config.PoppyPlants = {
    [1] = {
        location = vector3(-2251.3, -99.18, 100.11),
        heading = 334.49,
        model = "prop_plant_01b"
    },
    [2] = {
        location = vector3(-2249.63, -92.97, 101.8),
        heading = 329.56,
        model = "prop_plant_01b"
    },
    [3] = {
        location = vector3(-2245.57, -85.12, 104.5),
        heading = 25.16,
        model = "prop_plant_01b"
    },
    [4] = {
        location = vector3(-2240.81, -88.48, 105.88),
        heading = 21.52,
        model = "prop_plant_01b"
    },
	[5] = {
        location = vector3(-2240.87, -93.36, 103.88),
        heading = 334.49,
        model = "prop_plant_01b"
    },
    [6] = {
        location = vector3(-2236.0, -95.34, 102.55),
        heading = 329.56,
        model = "prop_plant_01b"
    },
    [7] = {
        location = vector3(-2240.6, -100.01, 100.49),
        heading = 25.16,
        model = "prop_plant_01b"
    },
    [8] = {
        location = vector3(-2246.29, -104.92, 99.27),
        heading = 21.52,
        model = "prop_plant_01b"
    },
	[9] = {
        location = vector3(-2243.64, -107.99, 96.71),
        heading = 334.49,
        model = "prop_plant_01b"
    },
    [10] = {
        location = vector3(-2254.22, -108.76, 97.25),
        heading = 329.56,
        model = "prop_plant_01b"
    },
    [11] = {
        location = vector3(-2247.33, -108.92, 97.70),
        heading = 25.16,
        model = "prop_plant_01b"
    },
    [12] = {
        location = vector3(-2250.96, -111.22, 97.50),
        heading = 21.52,
        model = "prop_plant_01b"
    },
	 [13] = {
        location = vector3(465.95, -1021.32, 31.78),
        heading = 21.52,
        model = "prop_plant_01b"
    },
   
}

Config.shrooms = {
    [1] = {
        location = vector3(2185.14, 5183.81, 57.48),
        heading = 334.49,
        model = "prop_stoneshroom1"
    },
    [2] = {
        location = vector3(2174.45, 5187.85, 57.43),
        heading = 329.56,
        model = "prop_stoneshroom1"
    },
    [3] = {
        location = vector3(2166.22, 5196.56, 58.0),
        heading = 25.16,
        model = "prop_stoneshroom1"
    },
    [4] = {
        location = vector3(2166.82, 5204.83, 58.63),
        heading = 21.52,
        model = "prop_stoneshroom1"
    },
	[5] = {
        location = vector3(2174.84, 5205.82, 59.19),
        heading = 334.49,
        model = "prop_stoneshroom1"
    },
    [6] = {
        location = vector3(2184.46, 5201.23, 59.2),
        heading = 329.56,
        model = "prop_stoneshroom1"
    },
    [7] = {
        location = vector3(2192.45, 5194.89, 58.86),
        heading = 25.16,
        model = "prop_stoneshroom1"
    },
    [8] = {
        location = vector3(2207.53, 5187.81, 58.95),
        heading = 21.52,
        model = "prop_stoneshroom1"
    },
	[9] = {
        location = vector3(2213.46, 5191.11, 59.81),
        heading = 334.49,
        model = "prop_stoneshroom1"
    },
    [10] = {
        location = vector3(2218.31, 5180.0, 58.18),
        heading = 329.56,
        model = "prop_stoneshroom1"
    },
    [11] = {
        location = vector3(2212.75, 5172.35, 57.2),
        heading = 25.16,
        model = "prop_stoneshroom1"
    },
    [12] = {
        location = vector3(2208.56, 5167.06, 56.34),
        heading = 21.52,
        model = "prop_stoneshroom1"
    },
	 [13] = {
        location = vector3(2196.9, 5158.59, 54.84),
        heading = 21.52,
        model = "prop_stoneshroom1"
    },
   
    [14] = {
        location = vector3(2191.62, 5174.91, 56.68),
        heading = 21.52,
        model = "prop_stoneshroom1"
    },
    [15] = {
        location = vector3(2190.18, 5182.54, 57.47),
        heading = 21.52,
        model = "prop_stoneshroom1"
    },
    [16] = {
        location = vector3(2185.85, 5190.49, 58.1),
        heading = 21.52,
        model = "prop_stoneshroom1"
    },
    [17] = {
        location = vector3(2179.95, 5194.19, 58.26),
        heading = 21.52,
        model = "prop_stoneshroom1"
    },
   
   
}

Config.Cokepeds = { ------------- this is where the setup peds will spawn
	vector3(640.24, 644.18, 129.09),
	vector3(642.64, 649.71, 128.91),
	vector3(646.47, 650.65, 128.91),
	vector3(652.8, 649.88, 128.95),
	vector3(656.87, 631.85, 128.91),
	vector3(649.96, 620.57, 128.91),
}

Config.CrackPeds = { ------------- this is where the setup peds will spawn
	vector3(1873.25, 299.28, 164.27),
	vector3(1891.37, 292.12, 163.68),
	vector3(1886.68, 274.1, 162.96),
	vector3(1869.67, 265.97, 163.72),
	vector3(1836.88, 251.09, 162.56),
	vector3(1853.3, 230.64, 162.09),
}

Config.heroinPeds = { ------------- this is where the setup peds will spawn
	vector3(2740.93, 1389.09, 24.5),
	vector3(2713.38, 1392.31, 24.54),
	vector3(2703.66, 1355.09, 24.52),
	vector3(2680.34, 1363.39, 24.52),
	vector3(2766.1, 1388.15, 24.52),
	vector3(2764.76, 1364.16, 24.52),
}

Config.lsdPeds = { ------------- this is where the setup peds will spawn
	vector3(-1564.49, 838.85, 184.18),
	vector3(-1545.33, 863.67, 181.44),
	vector3(-1542.18, 802.71, 184.24),
	vector3(-1524.31, 820.44, 181.79),
}
