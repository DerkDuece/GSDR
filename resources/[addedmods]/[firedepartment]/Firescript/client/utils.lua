--================================--
--      FIRE SCRIPT v2.0.1        --
--  by GIMI (+ foregz, Albo1125)  --
--  make some function by Wick	  --
--      License: GNU GPL 3.0      --
--================================--

-- Chat

function sendMessage(text)
	TriggerEvent(
		"chat:addMessage",
		{
			templateId = "firescript",
			args = {
				"FireScript v2.0.1",
				text
			}
		}
	)
end

-- Table functions

function countElements(table)
	local count = 0
	if type(table) == "table" then
		for k, v in pairs(table) do
			count = count + 1
		end
	end
	return count
end

syncInProgress = false