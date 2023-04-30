--================================--
--      FIRE SCRIPT v2.0.2        --
--  by GIMI (+ foregz, Albo1125)  --
--  make some function by Wick	  --
--      License: GNU GPL 3.0      --
--================================--
QBCore = exports['qb-core']:GetCoreObject()


--Send the message to your discord server
function sendToDiscord (color, name, message, footer)
	local DiscordWebHook = Config.WebHook
  
	local embed = {
		{
			color = color,
			title = "**".. name .."**",
			description = message,
			footer = {
				text = footer,
			},
		}
	}
  
	  PerformHttpRequest(Config.WebHook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = embed}), { ['Content-Type'] = 'application/json' })
end

--================================--
--         VERSION CHECK          --
--================================--
local curVersion = GetResourceMetadata(GetCurrentResourceName(), "version")
local resourceName = "Resource (" .. GetCurrentResourceName() .. ")"

CreateThread(function()
    if GetCurrentResourceName() ~= "Firescript" then
        resourceName = "Resource (" .. GetCurrentResourceName() .. ")"
        print("^0[^3WARNING^0] Rename the folder to \"Firescript\", otherwise the resource will NOT work properly")
		StopResource(GetCurrentResourceName())
    end

    while true do
        PerformHttpRequest("https://api.github.com/repos/Wick89/FirescriptAddons/releases/latest", CheckVersion, "GET")
        Wait(3600000)
    end
end)

function CheckVersion(err, responseText, headers)
    local repoVersion, repoURL = GetLatestVersion()

    CreateThread(function()
        if curVersion ~= repoVersion then
            Wait(4000)
			sendAdminToDiscord("Update found!\nUpdate url: "..repoURL.."\nCurrent version: 1.7\nNew version: "..repoVersion.."\nVersions behind: "..curVersion)
			print("")
            print("^0.-----------------------------------------------.")
            print("^0|                 ^55STAR Studios                 |")
            print("^0'-----------------------------------------------'")
			print("^0[^1WARNING^0] " .. resourceName .. " is ^1NOT ^0up to date!")
            print("^0[^1WARNING^0] Your Version: ^2" .. curVersion .. "^0")
            print("^0[^1WARNING^0] Latest Version: ^2" .. repoVersion .. "^0")
            print("^0[^1WARNING^0] Get the latest Version from: ^2" .. repoURL .. "^0")
			print("")
        else
            Wait(4000)
			print("")
            print("^0.-----------------------------------------------.")
            print("^0|                 ^55STAR Studios                 |")
            print("^0'-----------------------------------------------'")
            print("^0[^2INFO^0] " .. resourceName .. " is up to date! (^2" .. curVersion .. "^0)")
			print("^2[Give] ^7Support, ^0Feedback: ^5discord.link/gK5YWumFqn")
			print("")
        end
    end)
end

function GetLatestVersion()
    local repoVersion, repoURL = nil, nil

    PerformHttpRequest("https://api.github.com/repos/Wick89/FirescriptAddons/releases/latest", function(err, response, headers)
        if err == 200 then
            local data = json.decode(response)

            repoVersion = data.tag_name
            repoURL = data.html_url
        else
            repoVersion = curVersion
            repoURL = "https://github.com/Wick89/FirescriptAddons"
        end
    end, "GET")

    repeat
        Wait(50)
    until (repoVersion and repoURL)

    return repoVersion, repoURL
end

--======================--
--         Chat         --
--======================--
function sendMessage(source, text, customName)
	if source > 0 then
		TriggerClientEvent(
			"chat:addMessage",
			source,
			{
				templateId = "firescript",
				args = {
					((customName ~= nil) and customName or ("FireScript v%s"):format(curVersion)),
					text
				}
			}
		)
	else
		print(("[FireScript v%s] %s"):format(curVersion, text))
	end
end

--==========================--
--     Table functions  	--
--==========================--
function highestIndex(table, fireIndex)
	if not table then
		return
	end
	local table = fireIndex ~= nil and table[fireIndex] or table
	local index = 0
	local count = 0

	for k, v in ipairs(table) do
		count = count + 1
		if k >= index then
			index = k
		end
	end

	return index, count
end

function table.length(t)
	if not t or type(t) ~= "table" then
		return
	end

	local count = 0

	for k, v in pairs(t) do count = count + 1 end

	return count
end

function table.random(t)
	if not t or type(t) ~= "table" or next(t) == nil then
		return false
	end

	local randomPosition = math.random(1, table.length(t))
	local currentPosition = 0
	local randomKey = nil

	for k, v in pairs(t) do -- Select a random registered fire
		currentPosition = currentPosition + 1

		if currentPosition == randomPosition then
			randomKey = k
			break
		end
	end

	return randomKey, t[randomKey]
end

--======================--
--     JSON config  	--
--======================--
function saveData(data, keyword)
	if type(keyword) ~= "string" then
		return
	end
	SaveResourceFile(GetCurrentResourceName(), keyword .. ".json", json.encode(data), -1)
end

function loadData(keyword)
	local fileContents = LoadResourceFile(GetCurrentResourceName(), keyword .. ".json")
	return fileContents and json.decode(fileContents) or nil
end