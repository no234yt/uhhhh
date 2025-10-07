-- GUIHandler.lua
-- Handles showing/hiding the CMD bar and welcome popup

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local tweenService = game:GetService("TweenService")

local screenGui = playerGui:WaitForChild("ScreenGui")
local cmdBar = screenGui:WaitForChild("CMDBar")
local guiFrame = cmdBar:WaitForChild("GUI")
local toggleGui = cmdBar:WaitForChild("togglegui")
local smallInfo = screenGui:WaitForChild("SmallInformation")
local exampleBtn = smallInfo:WaitForChild("Buttons"):WaitForChild("ButtonExample")

-- Initial setup
cmdBar.Visible = true
smallInfo.Visible = true
guiFrame.Visible = false

smallInfo.Title.Text = "Welcome"
smallInfo.Description.Text = "Hi there! This is the CMD Bar test message."
exampleBtn.Text = "OK"

-- CMDBar start positions
local originalPos = cmdBar.Position
local hiddenPos = UDim2.new(1.2, 0, originalPos.Y.Scale, originalPos.Y.Offset)
cmdBar.Position = hiddenPos

-- Toggle animation
local function toggleCMDBar()
	local isHidden = cmdBar.Position == hiddenPos
	local goal = {Position = isHidden and originalPos or hiddenPos}
	guiFrame.Visible = isHidden
	tweenService:Create(cmdBar, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
end

-- Button connections
exampleBtn.MouseButton1Click:Connect(function()
	smallInfo.Visible = false
	cmdBar.Visible = true
end)

toggleGui.MouseButton1Click:Connect(toggleCMDBar)
