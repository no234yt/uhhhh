-- CommandProcessor.lua
-- Reads command input and executes from CommandList (LocalScript version)

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = playerGui:WaitForChild("ScreenGui")
local cmdBar = screenGui:WaitForChild("CMDBar")
local gui = cmdBar:WaitForChild("GUI")
local commandBox = gui:WaitForChild("CommandTextBox")
local helpInfo = gui:WaitForChild("Help"):WaitForChild("HelpInformation")

-- Find CommandList LocalScript
local commandListScript = script.Parent:FindFirstChild("CommandList")
if not commandListScript then
	warn("[CMD Bar] Missing CommandList.lua — commands won't work.")
	return
end

-- Wait for command table
local commands = nil
repeat
	task.wait()
	commands = getfenv(commandListScript).Commands
until commands

-- Command input handling
commandBox.FocusLost:Connect(function(enterPressed)
	if not enterPressed then return end

	local input = commandBox.Text:lower()
	commandBox.Text = ""

	if input == "" then return end

	local cmd = commands[input]
	if cmd then
		helpInfo.Text = "→ " .. (cmd.output or "Command executed.")
		if typeof(cmd.action) == "function" then
			task.spawn(cmd.action)
		end
	else
		helpInfo.Text = "⚠️ Unknown command: " .. input
	end
end)
