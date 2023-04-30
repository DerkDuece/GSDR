--================================--
--      FIRE SCRIPT v2.0.1        --
--  by GIMI (+ foregz, Albo1125)  --
--  make some function by Wick	  --
--      License: GNU GPL 3.0      --
--================================--
Config = {}

-- AUTO DETECT FRAMEWORK
Config.Framework = GetResourceState('es_extended') ==  'started' and 'esx' or GetResourceState('qb-core') ==  'started' and 'qb'
if not Config.Framework then print("^0[^3WARNING^0] ^1NO FRAMEWORK DETECTED!") end

-- Your Fire Job Name -- QB is "ambulance" or ESX job is "fd"
Config.Dispatch = {
    JobName = 'ambulance'
}

-- setup your whitelist.json for add more fire
Config.Fire = {
    fireSpreadChance = 10, -- Out of 100 chances, how many lead to fire spreading? (not exactly percents)
    maximumSpreads = 20,
    randomfire = {
        enableRandomFire = true, -- enable Random Fire
        interval = 1800000, -- Random fire spawn interval in ms
        chance = 50, -- Fire spawn chance (out of 100 chances, how many lead to spawning a fire?); Set to values between 1-100
        players = 3, -- Sets the minimum number of players subscribed to dispatch for the randomfire to spawn fires.
        firefighterJobs = { -- If using ESX or QB (Config.Dispatch.JobName), If not using ESX or QB you can set this to nil
            ["ambulance"] = true -- QB is "ambulance" or ESX job is "fd"
        }
    },
    Dispatch = {
        enabled = true, -- Set this to false if you don't want to use the default dispatch system
        timeout = 15000, -- The amount of time in ms to delay the dispatch after the fire has been created (Only for playDispatch "chat")
        storeLast = 5, -- The client will store the last five dispatch coordinates for use with /remindme <dispatchNumber> (Only for playDispatch "chat")
        clearGpsRadius = 20.0, -- If you don't want to automatically clear the route upon arrival, leave this to false (Only for playDispatch "chat")
        --JobName = 'ambulance', -- Your Fire Job Name -- QB is "ambulance" or ESX job is "fd"
        playSound = "Firestations", -- "chat" or "inferno" / Firestations or "none" -- play Stations sound
        playDispatch = "ps-dispatch", -- "chat" or "ps-dispatch" or "core_dispatch"
        Stations = {"els", "sls", "rh"}, -- Stations sound
        Tones = {"fire", "medical"} -- Page sound /pager fire or medical
    }
}

--Discord Webhooks
Config.WebHook = "https://discord.com/api/webhooks/1101993334492381264/wB7soumMDfbBBZT65CB1J95Ey6oE87xO0TzdNCfgB_uN0kbEdzjh6gGDSWOM86e77r79"

-- Config Stations
-- For stations sound,
--Stations = {"els", "sls", "rh"}
-- Name = "pb", -- Paleto Bay
-- Name = "fz",  -- Fort Zancudo
-- Name = "ss", -- Sandy Shores
-- Name = "rh",  -- Rockford Hills
-- Name = "els",  -- East Los Santos
-- Name = "sls",  -- South Los Santos
-- Name = "dpb",  -- Del Perro Beach
-- Name = "lsia", -- LSIA

-- Config Tones
--Tones = {"fire", "medical"}
-- "medical", "rescue", "fire", "other"