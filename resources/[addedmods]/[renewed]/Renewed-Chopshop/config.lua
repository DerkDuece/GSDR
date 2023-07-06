Config = {}

Config.PedStart = {
    coords = vector4(-454.78, -901.83, 23.77, 272.82),
    ped = "cs_nervousron",
    scenario = "WORLD_HUMAN_DRUG_DEALER"
}

Config.RenewedFuel = true -- Not released at the moment
Config.oSkullaEmotes = true -- https://github.com/Scullyy/scully_emotemenu

Config.Cars = {
    "sultan",
}

--[[
    "sultan3",
    "sultanrs",
    "vectre",
    "adder",
    "issi2",
    "issi3",
    "panto",
    "felon",
    "felon2",
    "oracle2",
    "sentinel",
    "windsor",
    "zion",
]]

Config.Spawns = {
    {coords = vector4(199.38, 6629.91, 30.9, 164.51), isBusy = false},
    {coords = vector4(192.61, 6631.49, 30.93, 165.96), isBusy = false},
    {coords = vector4(181.21, 6632.81, 30.95, 181.38), isBusy = false},
    {coords = vector4(848.95, 6512.7, 21.71, 98.24), isBusy = false},
    {coords = vector4(1728.51, 4772.48, 41.21, 175.75), isBusy = false},
    {coords = vector4(1706.54, 4756.0, 41.33, 92.08), isBusy = false},
    {coords = vector4(3790.37, 4446.08, 4.0, 24.67), isBusy = false},
    {coords = vector4(3519.37, 3796.82, 29.62, 178.38), isBusy = false},
    {coords = vector4(3505.54, 3777.45, 29.29, 168.21), isBusy = false},
    {coords = vector4(3569.91, 3759.74, 29.3, 351.74), isBusy = false},
    {coords = vector4(3589.78, 3758.51, 29.3, 353.75), isBusy = false},
    {coords = vector4(3452.29, 3672.14, 31.82, 354.34), isBusy = false},
    {coords = vector4(2672.1, 3515.89, 52.09, 67.92), isBusy = false},
    {coords = vector4(2676.77, 3526.43, 51.87, 98.21), isBusy = false},
    {coords = vector4(2616.68, 3294.59, 54.72, 188.52), isBusy = false},
    {coords = vector4(931.08, -98.62, 78.14, 223.58), isBusy = false},
    {coords = vector4(906.85, -96.77, 78.14, 148.09), isBusy = false},
    {coords = vector4(1274.29, -367.91, 68.43, 232.25), isBusy = false},
    {coords = vector4(1354.38, -1576.78, 53.24, 214.6), isBusy = false},
    {coords = vector4(1313.71, -1667.06, 50.61, 344.34), isBusy = false},
    {coords = vector4(982.26, -2546.34, 27.68, 172.62), isBusy = false},
    {coords = vector4(790.87, -2468.06, 20.25, 178.3), isBusy = false},
    {coords = vector4(1128.35, -3083.52, 5.18, 257.31), isBusy = false},
    {coords = vector4(131.75, -2629.78, 5.46, 171.76), isBusy = false},
    {coords = vector4(-425.98, -2459.35, 5.37, 50.04), isBusy = false},
    {coords = vector4(-1658.74, -205.03, 54.65, 253.99), isBusy = false},
    {coords = vector4(-1633.69, -205.7, 54.48, 157.88), isBusy = false},
    {coords = vector4(-1487.84, -201.15, 49.77, 36.81), isBusy = false},
    {coords = vector4(-1666.8, 63.46, 62.73, 292.41), isBusy = false},
    {coords = vector4(-1202.81, 322.34, 70.22, 14.05), isBusy = false},
    {coords = vector4(-939.23, -178.24, 41.25, 199.86), isBusy = false},
}

Config.Disassembly = {
    [1] = {coords = vector3(480.66, -1318.64, 29.2), radius = 15},
    [2] = {coords = vector3(2352.17, 3133.81, 48.21), radius = 15},
    [3] = {coords = vector3(3597.11, 3661.37, 33.87), radius = 15},
    [4] = {coords = vector3(2341.67, 3051.84, 48.15), radius = 15},
    [5] = {coords = vector3(954.56, -1512.49, 31.15), radius = 15},
    [6] = {coords = vector3(878.47, -1532.7, 30.21), radius = 15},
}

Config.PartsDisassembly = vector3(472.41, -1312.53, 29.24)
Config.Parts = {
    [1] = {item = "carpart_wheel",  reward = {["rubber"] = {min = 5, max = 15}}, coords = vector3(472.41, -1312.53, 30.24), prop = "v_ind_cm_tyre04"},
    [2] = {item = "carpart_door",   reward = {["aluminum"] = {min = 5, max = 15}, ["metalscrap"] = {min = 5, max = 15}}, coords = vector3(472.41, -1312.53, 30.24), prop = "imp_prop_impexp_car_door_04a"},
    [3] = {item = "carpart_hood",   reward = {["aluminum"] = {min = 5, max = 15}, ["metalscrap"] = {min = 5, max = 15}}, coords = vector3(472.41, -1312.53, 30.24), prop = "imp_prop_impexp_bonnet_02a"},
    [4] = {item = "carpart_trunk",  reward = {["aluminum"] = {min = 5, max = 15}, ["metalscrap"] = {min = 5, max = 15}}, coords = vector3(472.41, -1312.53, 30.24), prop = "imp_prop_impexp_bonnet_02a"},
}

Config.CarReward = {
    ["aluminum"] = {min = 5, max = 15},
    ["metalscrap"] = {min = 5, max = 15},
    ["rubber"] = {min = 5, max = 15},
}