-- LocalScript_Welcome.lua
-- Handles the startup welcome popup

local player = game.Players.LocalPlayer
local gui = require(script.Parent:WaitForChild("MainGUI"))

local smallInfo = gui:WaitForChild("SmallInformation")
local title = smallInfo:WaitForChild("Title")
local desc = smallInfo:WaitForChild("Description")
local buttons = smallInfo:WaitForChild("Buttons")
local okButton = buttons:WaitForChild("ButtonExample")
local cmdBar = gui:WaitForChild("CMDBar")

-- Setup
title.Text = "Welcome"
desc.Text = "hi this is a test welcome message"
okButton.Text = "ok"

smallInfo.Visible = true
cmdBar.Visible = false

okButton.MouseButton1Click:Connect(function()
	smallInfo.Visible = false
	cmdBar.Visible = true
end)
