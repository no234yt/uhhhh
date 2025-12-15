-- pr3tysonggui GUI (optimized, style preserved)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local FONT = Font.new(
	"rbxasset://fonts/families/IndieFlower.json",
	Enum.FontWeight.Regular,
	Enum.FontStyle.Normal
)

local function stroke(obj)
	obj.BorderSizePixel = 3
	obj.BorderColor3 = Color3.fromRGB(255, 0, 246)
end

local function txt(parent, class, name, text)
	local t = Instance.new(class, parent)
	t.Name = name
	t.Text = text or ""
	t.TextScaled = true
	t.TextWrapped = true
	t.TextColor3 = Color3.new(1,1,1)
	t.FontFace = FONT
	t.BackgroundColor3 = Color3.new(0,0,0)
	t.BackgroundTransparency = 0.9
	t.BorderSizePixel = 0
	return t
end

-- GUI ROOT
local gui = Instance.new("ScreenGui")
gui.Name = "pr3tysonggui"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = player:WaitForChild("PlayerGui")

-- BUTTON
local button = Instance.new("ImageButton", gui)
button.Name = "button"
button.Size = UDim2.new(0.04,0,0.092,0)
button.Position = UDim2.new(0.94,0,0.38,0)
button.BackgroundColor3 = Color3.new(0,0,0)
stroke(button)

Instance.new("UIAspectRatioConstraint", button)

-- MENU
local menu = Instance.new("Frame", button)
menu.Name = "menu"
menu.Size = UDim2.new(7.08,0,3.69,0)
menu.Position = UDim2.new(-7.43,0,-1.13,0)
menu.BackgroundColor3 = Color3.new(0,0,0)
menu.Visible = false
stroke(menu)

-- SONG IMAGE
local songimg = Instance.new("ImageButton", menu)
songimg.Name = "songimg"
songimg.Size = UDim2.new(0.368,0,0.705,0)
songimg.Position = UDim2.new(0.012,0,0.023,0)
songimg.BackgroundTransparency = 1

-- LABELS
local currentsong = txt(menu,"TextLabel","currentsong","song name")
currentsong.Size = UDim2.new(0.613,0,0.2,0)
currentsong.Position = UDim2.new(0.38,0,0.01,0)
currentsong.BackgroundTransparency = 1
currentsong.TextXAlignment = Enum.TextXAlignment.Right
currentsong.TextYAlignment = Enum.TextYAlignment.Top

local songcounter = txt(menu,"TextLabel","songcounter","1/1")
songcounter.Size = UDim2.new(0.22,0,0.16,0)
songcounter.Position = UDim2.new(0.77,0,0.16,0)
songcounter.BackgroundTransparency = 1
songcounter.TextXAlignment = Enum.TextXAlignment.Right

-- CONTROLS
local backsong = txt(menu,"TextButton","backsong","<")
backsong.Size = UDim2.new(0.098,0,0.164,0)
backsong.Position = UDim2.new(0.024,0,0.788,0)

local nextsong = txt(menu,"TextButton","nextsong",">")
nextsong.Size = UDim2.new(0.098,0,0.176,0)
nextsong.Position = UDim2.new(0.122,0,0.788,0)

local songnum = txt(menu,"TextBox","songnum","")
songnum.PlaceholderText = "num"
songnum.Size = UDim2.new(0.098,0,0.258,0)
songnum.Position = UDim2.new(0.239,0,0.741,0)
songnum.BackgroundTransparency = 1

local playpause = txt(menu,"TextButton","play/pause","P")
playpause.Size = UDim2.new(0.098,0,0.223,0)
playpause.Position = UDim2.new(0.883,0,0.752,0)

local start = txt(menu,"TextButton","start","/")
start.Size = UDim2.new(0.104,0,0.164,0)
start.Position = UDim2.new(0.779,0,0.788,0)

-- NEW: REPEAT MODE
local repeatmode = txt(menu,"TextButton","repeatmode","R0")
repeatmode.Size = UDim2.new(0.104,0,0.164,0)
repeatmode.Position = UDim2.new(0.65,0,0.788,0)

-- NEW: PLAYLIST SWITCH
local playlist = txt(menu,"TextButton","playlist","PL")
playlist.Size = UDim2.new(0.104,0,0.164,0)
playlist.Position = UDim2.new(0.53,0,0.788,0)

-- NEW: PROGRESS BAR
local progressbg = Instance.new("Frame", menu)
progressbg.Name = "progressbg"
progressbg.Size = UDim2.new(0.96,0,0.04,0)
progressbg.Position = UDim2.new(0.02,0,0.69,0)
progressbg.BackgroundColor3 = Color3.new(0,0,0)
stroke(progressbg)

local progressfill = Instance.new("Frame", progressbg)
progressfill.Name = "progressfill"
progressfill.Size = UDim2.new(0,0,1,0)
progressfill.BackgroundColor3 = Color3.new(1,1,1)
progressfill.BorderSizePixel = 0

return gui
