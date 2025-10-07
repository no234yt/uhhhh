-- CommandList.lua
-- Easily customizable command definitions for CMD Bar
-- Each command: [name] = { output = "Text", action = function() ... end }

local player = game.Players.LocalPlayer

-- ✏️ Customize commands here
local Commands = {
	["help"] = {
		output = "Commands:\n/help - show this\n/hello - greet\n/ping - test response\n/clear - clear output",
		action = function()
			print("[CMD] Help displayed by " .. player.Name)
		end
	},

	["hello"] = {
		output = "Hello, " .. player.DisplayName .. "!",
		action = function()
			print("[CMD] Hello from " .. player.Name)
		end
	},

	["ping"] = {
		output = "Pong!",
		action = function()
			print("[CMD] Pong executed by " .. player.Name)
		end
	},

	["clear"] = {
		output = "Help text cleared.",
		action = function()
			local gui = player:WaitForChild("PlayerGui"):WaitForChild("ScreenGui")
			local help = gui.CMDBar.GUI.Help.HelpInformation
			help.Text = ""
		end
	},
}

-- Make commands visible to CommandProcessor
getfenv().Commands = Commands
