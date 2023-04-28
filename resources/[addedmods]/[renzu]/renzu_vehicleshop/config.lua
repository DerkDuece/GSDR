Config = {}
Config.Locale = "en"
Config.Mysql = 'oxmysql' -- "ghmattisql", "mysql-async", "oxmysql"
Config.framework = 'QBCORE' -- ESX or QBCORE
Config.UsePopUI = true -- Create a Thread for checking playercoords and Use POPUI to Trigger Event, set this to false if using rayzone. Popui is originaly built in to RayZone -- DOWNLOAD https://github.com/renzuzu/renzu_popui
Config.Quickpick = false -- if false system will create a garage shell and spawn every vehicle you preview
Config.EnableTestDrive = true
Config.PlateSpace = true -- enable / disable plate spaces (compatibility with esx 1.1?)
Config.SaveJob = true -- this config is to save the value to owned_vehicles.job column
Config.Licensed = true -- Enable Driver Licensed Checker
Config.DisplayCars = true -- enable display of cars
Config.Marker = true -- use draw marker and Iscontrollpress native , popui will not work if this is true

-- VEHICLE THUMBNAILS IMAGE
-- this is standalone
Config.CustomImg = false -- if true your Config.CustomImgColumn IMAGE url will be used for each vehicles else, the imgs/uploads/MODEL.jpg
Config.CustomImgColumn = 'imglink' -- db column name
-- this is standalone
-- Config.use_renzu_vehthumb -- Config.CustomImg must be false
Config.use_renzu_vehthumb = true -- use vehicle thumb generation script
Config.RgbColor = true -- your framework or garage must support custom colors ex. https://github.com/renzuzu/renzu_garage

-- CARKEYS -- -- you need to replace the event
Config.Carkeys = function(plate,source)
    print("Sending Keys")
    TriggerClientEvent('vehiclekeys:client:SetOwner',source,plate) -- THIS EVENT IS QBCORE CAR KEYS!, replace the event name to your carkeys event
end
-- CARKEYS --
--EXTRA
Config.UseArenaSpawn = true -- will use custom location for spawning vehicle in quickpick == false
-- MAIN
VehicleShop = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        title = "PDM Vehicle Shop",
        icon = 'https://i.imgur.com/05SLYUP.png',
        type = 'car',
        job = 'all',
        default_garage = 'A',
        Dist = 4, -- distance (DEPRECATED)
        shop_x = -35.469879150391,
        shop_y = -1100.3621826172,
        shop_z = 26.422359466553, -- coordinates for this garage
        spawn_x = -47.36,
        spawn_y = -1112.71,
        spawn_z = 26.67,
        heading = 74.13, -- Vehicle spawn location,
        displaycars = {
            [1] = {model = 'jester3', value = 100000, coord = vector4(-42.14, -1101.5, 26.66, 19.46)},
            [2] = {model = 'fmj', value = 1000000, coord = vector4(-54.58, -1097.09, 26.66, 31.02)},
            [3] = {model = 'adder', value = 1000000, coord = vector4(-50.01, -1083.48, 26.66, 251.83)},
            [4] = {model = 'zentorno', value = 1000000, coord = vector4(-37.05, -1093.44, 26.66, 18.96)},
        }
    },
    -- BOAT shop
    ['Yacht Club Boat Shop'] = { -- same with name
        name = "Yacht Club Boat Shop", --LEGION
        type = 'boat', -- type of shop
        title = "Yacht Club Boat Shop",
        icon = 'https://i.imgur.com/62bRdH6.png',
        job = 'all',
        default_garage = 'Boat Garage A',
        Dist = 7, -- distance (DEPRECATED)
        shop_x = -812.87133789062,
        shop_y = -1407.4493408203,
        shop_z = 5.0005192756653, -- coordinates for this garage
        spawn_x = -818.69775390625,
        spawn_y = -1420.5775146484,
        spawn_z = 0.12045155465603,
        heading = 178.27006530762, -- Vehicle spawn location
        shop = { -- if not vehicle is setup in Database SQL, we will use this
            {shop='Yacht Club Boat Shop',brand='Normal Boat',stock=50,price=50000,model='dinghy',name="Dinghy"},
            {shop='Yacht Club Boat Shop',brand='Normal Boat',stock=50,price=100000,model='dinghy2',name="Dinghy2"},
            {shop='Yacht Club Boat Shop',brand='Normal Boat',stock=50,price=100000,model='dinghy3',name="Dinghy 3"},
            {shop='Yacht Club Boat Shop',brand='Normal Boat',stock=50,price=100000,model='dinghy4',name="Dinghy4"},
            {shop='Yacht Club Boat Shop',brand='Rich Boat',stock=50,price=100000,model='marquis',name="Marquiz"},
            {shop='Yacht Club Boat Shop',brand='Rich Boat',stock=50,price=100000,model='toro2',name="Toro 2"},
            {shop='Yacht Club Boat Shop',brand='Submarine',stock=50,price=100000,model='submersible',name="Submersible"},
            {shop='Yacht Club Boat Shop',brand='Submarine',stock=50,price=100000,model='submersible2',name="Submersible2"},
        },
    },
}

Config.EnableVehicleSelling = true -- allow your user to sell the vehicle and deletes it from database
Config.RefundPercent = 70 -- 70% (percentage from original value)
Refund = {
    ['pdm'] = { -- same with name
        name = "pdm", --LEGION
        job = 'all',
        Dist = 7, -- distance
        Blip = {color = 38, sprite = 219, scale = 0.6},
        shop_x = -46.320140838623,
        shop_y = -1095.1837158203,
        shop_z = 25.91579246521, -- coordinates for selling / refunding the vehicle
    },
}

lib = nil

function TryOxLib(file)
    local fcall = function()
        local name = ('%s.lua'):format(file)
        local content = LoadResourceFile('ox_lib',name)
        local f, err = load(content)
        return f()
    end
    _, ret = pcall(fcall,false)
    return ret
end