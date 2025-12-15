-- pr3tysonggui (optimized GUI)
local Players = game:GetService("Players")
local lp = Players.LocalPlayer

local PINK = Color3.fromRGB(255, 0, 246)
local BLACK = Color3.fromRGB(0, 0, 0)
local WHITE = Color3.fromRGB(255, 255, 255)
local FONT = Font.new("rbxasset://fonts/families/IndieFlower.json")

local gui = Instance.new("ScreenGui")
gui.Name = "pr3tysonggui"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = lp:WaitForChild("PlayerGui")

-- TOGGLE BUTTON
local button = Instance.new("ImageButton")
button.Name = "button"
button.Size = UDim2.fromScale(0.04, 0.092)
button.Position = UDim2.fromScale(0.94, 0.39)
button.BackgroundColor3 = BLACK
button.BorderColor3 = PINK
button.BorderSizePixel = 3
button.Parent = gui

Instance.new("UIAspectRatioConstraint", button)

-- MENU
local menu = Instance.new("Frame")
menu.Name = "menu"
menu.Size = UDim2.fromScale(7.09, 3.7)
menu.Position = UDim2.fromScale(-7.43, -1.13)
menu.BackgroundColor3 = BLACK
menu.BorderColor3 = PINK
menu.BorderSizePixel = 3
menu.Visible = false
menu.Parent = button

-- SONG IMAGE
local songimg = Instance.new("ImageButton")
songimg.Name = "songimg"
songimg.Size = UDim2.fromScale(0.37, 0.71)
songimg.Position = UDim2.fromScale(0.01, 0.02)
songimg.BackgroundTransparency = 1
songimg.Parent = menu

-- SONG TITLE
local currentsong = Instance.new("TextLabel")
currentsong.Name = "currentsong"
currentsong.Size = UDim2.fromScale(0.61, 0.2)
currentsong.Position = UDim2.fromScale(0.38, 0.01)
currentsong.TextXAlignment = Right
currentsong.TextYAlignment = Top
currentsong.TextScaled = true
currentsong.TextColor3 = WHITE
currentsong.FontFace = FONT
currentsong.BackgroundTransparency = 1
currentsong.Text = "song name"
currentsong.Parent = menu

-- SONG COUNTER
local songcounter = Instance.new("TextLabel")
songcounter.Name = "songcounter"
songcounter.Size = UDim2.fromScale(0.22, 0.16)
songcounter.Position = UDim2.fromScale(0.77, 0.16)
songcounter.TextScaled = true
songcounter.TextColor3 = WHITE
songcounter.FontFace = FONT
songcounter.BackgroundTransparency = 1
songcounter.Text = "1/1"
songcounter.Parent = menu

-- PROGRESS BAR (NEW)
local progressBG = Instance.new("Frame")
progressBG.Name = "progressBG"
progressBG.Size = UDim2.fromScale(0.96, 0.05)
progressBG.Position = UDim2.fromScale(0.02, 0.68)
progressBG.BackgroundColor3 = BLACK
progressBG.BorderColor3 = PINK
progressBG.BorderSizePixel = 3
progressBG.Parent = menu

local progressFill = Instance.new("Frame")
progressFill.Name = "progressFill"
progressFill.Size = UDim2.fromScale(0, 1)
progressFill.BackgroundColor3 = PINK
progressFill.BorderSizePixel = 0
progressFill.Parent = progressBG

-- BUTTON FACTORY
local function textButton(name, text, size, pos)
	local b = Instance.new("TextButton")
	b.Name = name
	b.Text = text
	b.Size = size
	b.Position = pos
	b.TextScaled = true
	b.TextColor3 = WHITE
	b.FontFace = FONT
	b.BackgroundTransparency = 1
	b.Parent = menu
	return b
end

-- CONTROLS
textButton("backsong", "<", UDim2.fromScale(0.1, 0.16), UDim2.fromScale(0.02, 0.79))
textButton("nextsong", ">", UDim2.fromScale(0.1, 0.18), UDim2.fromScale(0.12, 0.79))
textButton("playpause", "P", UDim2.fromScale(0.1, 0.22), UDim2.fromScale(0.88, 0.75))
textButton("repeat", "R", UDim2.fromScale(0.1, 0.16), UDim2.fromScale(0.66, 0.79))
textButton("playlist", "L", UDim2.fromScale(0.1, 0.16), UDim2.fromScale(0.54, 0.79))
textButton("volume", "V", UDim2.fromScale(0.1, 0.16), UDim2.fromScale(0.42, 0.79))

-- SONG NUMBER
local songnum = Instance.new("TextBox")
songnum.Name = "songnum"
songnum.Size = UDim2.fromScale(0.1, 0.26)
songnum.Position = UDim2.fromScale(0.24, 0.74)
songnum.TextScaled = true
songnum.TextColor3 = WHITE
songnum.PlaceholderText = "num"
songnum.PlaceholderColor3 = WHITE
songnum.FontFace = FONT
songnum.BackgroundTransparency = 1
songnum.Text = ""
songnum.Parent = menu

return gui
