-- LocalScript_GUIHandler.lua
-- Handles CMD Bar toggle and animation

local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local gui = require(script.Parent:WaitForChild("MainGUI"))

local cmdBar = gui:WaitForChild("CMDBar")
local toggleButton = cmdBar:WaitForChild("togglegui")
local innerGUI = cmdBar:WaitForChild("GUI")

-- Animation setup
local originalPos = cmdBar.Position
local hiddenPos = UDim2.new(1.2, 0, originalPos.Y.Scale, originalPos.Y.Offset)
cmdBar.Position = hiddenPos
innerGUI.Visible = false

local toggled = false

local function toggleCMD()
	toggled = not toggled
	local goal = {Position = toggled and originalPos or hiddenPos}
	TweenService:Create(cmdBar, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), goal):Play()
	task.wait(0.2)
	innerGUI.Visible = toggled
end

toggleButton.MouseButton1Click:Connect(toggleCMD)
