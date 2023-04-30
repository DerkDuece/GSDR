-- ================FireFighter Job==========================
-- ===================By Wick===============================
-- =================checkVersion============================
-- =========================================================
local curVersion = GetResourceMetadata(GetCurrentResourceName(), "version")
local resourceName = "Resource (" .. GetCurrentResourceName() .. ")"

CreateThread(function()
    if GetCurrentResourceName() ~= "Firestations" then
        resourceName = "Resource (" .. GetCurrentResourceName() .. ")"
        print("^0[^3WARNING^0] Rename the folder to \"Firestations\", otherwise the resource will NOT work properly")
        StopResource(GetCurrentResourceName())
    end

    while true do
        PerformHttpRequest("https://api.github.com/repos/Wick89/Firestations/releases/latest", CheckVersion, "GET")
        Wait(3600000)
    end
end)

function CheckVersion(err, responseText, headers)
    local repoVersion, repoURL = GetLatestVersion()

    CreateThread(function()
        if curVersion ~= repoVersion then
            Wait(4000)
            print("")
            print("^0.-----------------------------------------------.")
            print("^0|                 ^55STAR Studios               |")
            print("^0'-----------------------------------------------'")
			print("^0[^1WARNING^0] " .. resourceName .. " is ^1NOT ^0up to date!")
            print("^0[^1WARNING^0] Your Version: ^2" .. curVersion .. "^0")
            print("^0[^1WARNING^0] Latest Version: ^2" .. repoVersion .. "^0")
            print("")
            StopResource('Firestations')
        else
            Wait(4000)
            print("")
            print("^0.-----------------------------------------------.")
            print("^0|                 ^55STAR Studios               |")
            print("^0'-----------------------------------------------'")
            print("^0[^2INFO^0] " .. resourceName .. " is up to date! (^2" .. curVersion .. "^0)")
            print("^2[Give] ^7Support, ^0Feedback: ^5discord.link/gK5YWumFqn")
            print("")
        end
    end)
end

function GetLatestVersion()
    local repoVersion, repoURL = nil, nil

    PerformHttpRequest("https://api.github.com/repos/Wick89/Firestations/releases/latest", function(err, response, headers)
        if err == 200 then
            local data = json.decode(response)

            repoVersion = data.tag_name
            repoURL = data.html_url
        else
            repoVersion = curVersion
            repoURL = "https://github.com/Wick89/Firestations"
        end
    end, "GET")

    repeat
        Wait(50)
    until (repoVersion and repoURL)

    return repoVersion, repoURL
end