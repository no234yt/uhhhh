-- CommandProcessor.lua
-- Handles command input + autocomplete + execution

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local screenGui = playerGui:WaitForChild("ScreenGui")
local cmdBar = screenGui:WaitForChild("CMDBar")
local gui = cmdBar:WaitForChild("GUI")
local commandBox = gui:WaitForChild("CommandTextBox")
local helpInfo = gui:WaitForChild("Help"):WaitForChild("HelpInformation")

-- grab commands
local commandListScript = script.Parent:WaitForChild("CommandList")
local commands
repeat task.wait() commands = getfenv(commandListScript).Commands until commands

local function updateSuggestions(input)
	local matches = {}
	for name, data in pairs(commands) do
		if string.find(name, input) or (data.alias and string.find(data.alias, input)) then
			table.insert(matches, name .. (data.alias and " (/" .. data.alias .. ")" or ""))
		end
	end
	if #matches > 0 then
		helpInfo.Text = "Suggestions:\n" .. table.concat(matches, "\n")
	else
		helpInfo.Text = ""
	end
end

commandBox:GetPropertyChangedSignal("Text"):Connect(function()
	local text = commandBox.Text:lower()
	if text ~= "" then
		updateSuggestions(text)
	else
		helpInfo.Text = ""
	end
end)

commandBox.FocusLost:Connect(function(enterPressed)
	if not enterPressed then return end
	local input = commandBox.Text:lower()
	commandBox.Text = ""
	helpInfo.Text = ""

	if input == "" then return end
	local found
	for name, data in pairs(commands) do
		if input == name or input == data.alias then
			found = data
			break
		end
	end
	if found then
		helpInfo.Text = "→ " .. (found.output or "Executed.")
		if typeof(found.action) == "function" then
			task.spawn(found.action)
		end
	else
		helpInfo.Text = "⚠️ Unknown command: " .. input
	end
end)
