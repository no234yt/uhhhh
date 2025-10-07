-- GUIHandler.lua
-- Handles showing/hiding CMD bar and welcome popup

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local tweenService = game:GetService("TweenService")

local screenGui = playerGui:WaitForChild("ScreenGui")
local cmdBar = screenGui:WaitForChild("CMDBar")
local guiFrame = cmdBar:WaitForChild("GUI")
local toggleGui = cmdBar:WaitForChild("togglegui")
local smallInfo = screenGui:WaitForChild("SmallInformation")
local exampleBtn = smallInfo:WaitForChild("Buttons"):WaitForChild("ButtonExample")

-- Startup display
cmdBar.Visible = true
smallInfo.Visible = true
guiFrame.Visible = false

-- Customize welcome text here 👇
smallInfo.Title.Text = "Welcome"
smallInfo.Description.Text = "Welcome to the CMD Bar demo!"
exampleBtn.Text = "OK"

-- CMD bar slide animation setup
local originalPos = cmdBar.Position
local hiddenPos = UDim2.new(1.2, 0, originalPos.Y.Scale, originalPos.Y.Offset)
cmdBar.Position = hiddenPos

local function toggleCMDBar()
	local showing = cmdBar.Position == hiddenPos
	local goal = { Position = showing and originalPos or hiddenPos }
	guiFrame.Visible = showing
	tweenService:Create(cmdBar, TweenInfo.new(0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
end

exampleBtn.MouseButton1Click:Connect(function()
	smallInfo.Visible = false
	cmdBar.Visible = true
end)

toggleGui.MouseButton1Click:Connect(toggleCMDBar)
