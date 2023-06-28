Config = {}

Config.Debug = false

Config.Framework = {
    -- 0 = standalone
    -- 1 = esx
    -- 2 = qbcore
    Active = 2,

    -- esx
    ESX_SHARED_OBJECT = "esx:getSharedObject",

    -- es_extended resource name
    ES_EXTENDED_NAME = "es_extended",

    -------

    -- qbcore
    QBCORE_SHARED_OBJECT = "QBCore:GetObject",

    -- qb-core resource name
    QB_CORE_NAME = "qb-core",
}

-- can be left on nil value it will automatically detect your database.
-- but just in case you had more than one mysql framework on your server
-- you will need to choose the type manually

-- 0 = oxmysql
-- 1 = ghmattimysql
-- 2 = mysql-async
Config.MysqlType = nil

-- using ox inv?
Config.ox_inv = false

-- item called
Config.ItemName = "mixer"

-- if using standalone how many mixers player will be allowed to have / place
Config.MixerInventoryCount = 1

-- Key to open menu
Config.KeyToOpen = "E"

-- Locale for script
Config.Locale = "en"

-- default start volume
Config.DefaultMixerVolume = 0.5

-- mixer object player place on ground
Config.MixerPlaceObject = "sf_prop_sf_dj_desk_02a"

-- the red marker above the mixer player can spawn offset
Config.MarkerOffsetForObject = vector3(0.0, 0.0, 1.0)

-- the teleport player behind/infront depends if you have changed the mixer place object offset
Config.MixerObjectOffsetTeleport = vector3(0.0, -0.75, 1.0)

-- if you have changed the object in "MixerPlaceObject" the rotation of player might be wrong here just edit
-- the number to greater/lower to rotate the player to correct way
Config.OffsetHeadingForObjectTeleport = 0.0

-- idle animation
Config.AnimDictMixerIdle = "anim@amb@nightclub@djs@dixon@"
Config.AnimClipMixerIdle = "dixn_dance_cntr_open_dix"

-- DJ mixer list
Config.MixerList = {
    ["vanilla"] = {
        mixer = {
            {
                pos = vector3(120.72, -1281.12, 29.48),
                distance = 5,

                -- this will teleport player infront of the mixer so he stands correctly
                teleportPlayer = {
                    pos = vector3(120.58, -1281.12, 29.48),
                    heading = 119.98,

                    animDict = Config.AnimDictMixerIdle,
                    animClip = Config.AnimClipMixerIdle,
                },
            },
        },
        speaker = {
            {
                pos = vector3(117.47, -1290.58, 29.17),
                distance = 20.0,
            },
        },
        -- max value is 1.0
        -- 1.0 = 100% volume
        defaultVolume = 0.5,
        --jobs = {"police","other job"} -- if left nil everyone will be able to open it
    },
    -----------------------------
    ["Galaxy club"] = {
        mixer = {
            {
                pos = vector3(-1603.39, -3012.6, -77.79),
                distance = 5,

                -- this will teleport player infront of the mixer so he stands correctly
                teleportPlayer = {
                    pos = vector3(-1603.04, -3012.61, -77.8),
                    heading = 271.38,

                    animDict = Config.AnimDictMixerIdle,
                    animClip = Config.AnimClipMixerIdle,
                },
            },
        },
        speaker = {
            {
                pos = vector3(-1596.71, -3012.88, -77.79),
                distance = 25.0,
            },
        },
        -- max value is 1.0
        -- 1.0 = 100% volume
        defaultVolume = 0.5,
        --jobs = {"police","other job"} -- if left nil everyone will be able to open it
    },
    -----------------------------
    ["Vinewood Bowl"] = {
        mixer = {
            {
                pos = vector3(684.02, 571.54, 130.46),
                distance = 5,

                -- this will teleport player infront of the mixer so he stands correctly
                teleportPlayer = {
                    pos = vector3(683.95, 571.36, 130.46),
                    heading = 159.88,

                    animDict = Config.AnimDictMixerIdle,
                    animClip = Config.AnimClipMixerIdle,
                },
            },
        },
        speaker = {
            {
                pos = vector3(672, 536, 135),
                distance = 100.0,
            },
        },
        -- max value is 1.0
        -- 1.0 = 100% volume
        defaultVolume = 0.5,
        --jobs = {"police","other job"} -- if left nil everyone will be able to open it
    },
    -----------------------------
    ["Sisyphus"] = {
        mixer = {
            {
                pos = vec3(200.129929, 1165.890991, 227.004898),
                distance = 5,

                -- this will teleport player infront of the mixer so he stands correctly
                teleportPlayer = {
                    pos = vector3(200.02, 1165.9, 227),
                    heading = 103.22,

                    animDict = Config.AnimDictMixerIdle,
                    animClip = Config.AnimClipMixerIdle,
                },
            },
        },
        speaker = {
            {
                pos = vec3(169.950256, 1157.810913, 233.494263),
                distance = 100.0,
            },
        },
        -- max value is 1.0
        -- 1.0 = 100% volume
        defaultVolume = 0.5,
        --jobs = {"police","other job"} -- if left nil everyone will be able to open it
    },
    -----------------------------
    ["Bahama Mamas"] = {
        mixer = {
            {
                pos = vec3(-1381.943848, -614.373230, 31.497889),
                distance = 5,

                -- this will teleport player infront of the mixer so he stands correctly
                teleportPlayer = {
                    pos = vector3(-1382.169189, -614.539734, 31.497890),
                    heading = 121.22,

                    animDict = Config.AnimDictMixerIdle,
                    animClip = Config.AnimClipMixerIdle,
                },
            },
        },
        speaker = {
            {
                pos = vec3(-1387.117432, -620.849243, 30.819593),
                distance = 30.0,
            },
        },
        -- max value is 1.0
        -- 1.0 = 100% volume
        defaultVolume = 0.5,
        --jobs = {"police","other job"} -- if left nil everyone will be able to open it
    },
    -----------------------------
    --    ["Must be unique name"] = {
    --        mixer = {
    --            {
    --                pos = vector3(120.72, -1281.12, 29.48),
    --                distance = 5,
    --            },
    --        },
    --        speaker = {
    --            {
    --                pos = vector3(120.72, -1281.12, 29.48),
    --                distance = 25.0,
    --            },
    --        },
    --        -- max value is 1.0
    --        -- 1.0 = 100% volume
    --        defaultVolume = 0.5,
    --        -- jobs = {"job","other job"} -- if left nil everyone will be able to open it
    --    },
    --    -----------------------------
    --    ["Bet it is uniqe name enough"] = {
    --        mixer = {
    --            {
    --                pos = vector3(120.72, -1281.12, 29.48),
    --                distance = 5,
    --            },
    --            -- jobs = {"job","other job"} -- if left nil everyone will be able to open it
    --        },
    --        speaker = {
    --            {
    --                pos = vector3(120.72, -1281.12, 29.48),
    --                distance = 25.0,
    --            },
    --        },
    --        -- max value is 1.0
    --        -- 1.0 = 100% volume
    --        defaultVolume = 0.5,
    --        -- jobs = {"job","other job"} -- if left nil everyone will be able to open it
    --    },
}

Config.SpawnMixerTable = {
    {
        model = "sf_prop_sf_dj_desk_02a",
        pos = vector3(683.8, 570.87, 129.46),
        heading = 161.39,
        renderDistance = 100.0,
    },

    {
        model = "sf_prop_sf_dj_desk_02a",
        pos = vector3(199.58, 1165.72, 226.01),
        heading = 105.42,
        renderDistance = 100.0,
    },
}


-- This will disable all teleport markers on map (from this resource)
Config.EnableTeleportMarker = true

Config.TeleportMarker = {
    {
        entrance = {
            markerPosition = vector3(-577.01, 239.84, 81.8),

            markerStyle = {
                style = 27,
                rotation = true,
                faceCamera = false,

                scale = vector3(2, 2, 1),
                color = { r = 255, g = 255, b = 255, a = 125 },

                keysToOpen = { 38 },
            },

            destination = vector3(-1569.4, -3016.94, -74.41),
            heading = 358.87,
        },

        exit = {
            markerPosition = vector3(-1569.43, -3016.83, -75.3),

            markerStyle = {
                style = 27,
                rotation = true,
                faceCamera = false,

                scale = vector3(1, 1, 1),
                color = { r = 255, g = 255, b = 255, a = 125 },

                keysToOpen = { 38 },
            },

            destination = vector3(-577.01, 239.84, 82.65),
            heading = 352.87,
        },
    },
}

-- this will disable all blips on map (from this resource)
Config.EnableBlipsOnMap = true

Config.BlipList = {
    {
        Position = vector3(-577.01, 239.84, 82.65),
        Sprite = 614,
        Options = {
            name = "Galaxy club",
            type = 4,
            scale = 1.0,
            shortRange = true,
        },
    },
}

-- see in worldeffects/config/*.lua
Config.WorldEffects = {}

SoundsEffects = {
    {
        Name = "Countdown from 10 to 0 and hyping on end",
        URL = "https://www.youtube.com/watch?v=iwYDfyCABAc",
    },

    {
        Name = "Count down from 5 to 1 and hyping on end",
        URL = "https://www.youtube.com/watch?v=LZyIgCOeLLU",
    },
}

-- How much ofter the player position is updated ?
Config.RefreshTime = 300

-- how much close player has to be to the sound before starting updating position ?
Config.distanceBeforeUpdatingPos = 40

-- Message list
Config.Messages = {
    ["streamer_on"] = "Streamer mode is on. From now you will not hear any music/sound.",
    ["streamer_off"] = "Streamer mode is off. From now you will be able to listen to music that players might play.",
}

-------------------------
-------------------------
-------------------------
-- if you're going to use external xsound alot of effects wont work from xdiskjockey so I dont recommend switching anything to true from below.
-------------------------
-------------------------
-------------------------
-- external xsound?
Config.UseExternalxSound = false

-- if you want to use high_3dsounds
Config.UseHighSound = false

-- name of the lib
Config.xSoundName = "xsound"

if Config.UseHighSound then
    Config.xSoundName = "high_3dsounds"
    Config.UseExternalxSound = true
end