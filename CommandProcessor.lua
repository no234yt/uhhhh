-- CommandProcessor.lua
-- Reads input and executes matching commands from CommandList

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = playerGui:WaitForChild("ScreenGui")
local cmdBar = screenGui:WaitForChild("CMDBar")
local gui = cmdBar:WaitForChild("GUI")
local commandBox = gui:WaitForChild("CommandTextBox")
local helpInfo = gui:WaitForChild("Help"):WaitForChild("HelpInformation")

-- Require command list (LocalScript-friendly)
local commands = require(script:WaitForChild("CommandList"))

commandBox.FocusLost:Connect(function(enterPressed)
	if not enterPressed then return end

	local text = commandBox.Text:lower()
	commandBox.Text = ""

	if text == "" then return end

	local cmd = commands[text]
	if cmd then
		helpInfo.Text = "→ " .. (cmd.output or "Command executed.")
		if typeof(cmd.action) == "function" then
			task.spawn(cmd.action)
		end
	else
		helpInfo.Text = "⚠️ Unknown command: " .. text
	end
end)
