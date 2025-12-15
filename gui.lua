local GUI = {}

local player = game:GetService("Players").LocalPlayer
local pgui = player:WaitForChild("PlayerGui")

--// MAIN SCREENGUI
local screen = Instance.new("ScreenGui", pgui)
screen.Name = "pr3tysonggui"
screen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screen.ClipToDeviceSafeArea = false
GUI.screen = screen

--// BUTTON
local btn = Instance.new("ImageButton", screen)
btn.Name = "button"
btn.Size = UDim2.new(0.04, 0, 0.09, 0)
btn.Position = UDim2.new(0.938, 0, 0.389, 0)
btn.BorderSizePixel = 3
btn.BackgroundColor3 = Color3.new(0,0,0)
btn.BorderColor3 = Color3.fromRGB(255,0,246)
GUI.button = btn

local aspect = Instance.new("UIAspectRatioConstraint", btn)

--// MENU
local menu = Instance.new("Frame", btn)
menu.Name = "menu"
menu.Size = UDim2.new(7.08,0,3.69,0)
menu.Position = UDim2.new(-7.43,0,-1.13,0)
menu.BorderSizePixel = 3
menu.BackgroundColor3 = Color3.new(0,0,0)
menu.BorderColor3 = Color3.fromRGB(255,0,246)
GUI.menu = menu
menu.Visible = false

--// SONG IMAGE
local coverImg = Instance.new("ImageButton", menu)
coverImg.Name = "songimg"
coverImg.BackgroundTransparency = 1
coverImg.Size = UDim2.new(0.368,0,0.706,0)
coverImg.Position = UDim2.new(0.012,0,0.023,0)
coverImg.BorderSizePixel = 0
GUI.cover = coverImg

--// CURRENT SONG & COUNTER
local songName = Instance.new("TextLabel", menu)
songName.Name = "currentsong"
songName.Text = "song name"
songName.TextScaled = true
songName.TextColor3 = Color3.new(1,1,1)
songName.BackgroundTransparency = 1
songName.TextXAlignment = Enum.TextXAlignment.Right
songName.TextYAlignment = Enum.TextYAlignment.Top
songName.Size = UDim2.new(0.613,0,0.2,0)
songName.Position = UDim2.new(0.38,0,0.01,0)
songName.FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")
GUI.songName = songName

local songCounter = Instance.new("TextLabel", menu)
songCounter.Name = "songcounter"
songCounter.Text = "1/3"
songCounter.TextScaled = true
songCounter.TextColor3 = Color3.new(1,1,1)
songCounter.BackgroundTransparency = 1
songCounter.TextXAlignment = Enum.TextXAlignment.Right
songCounter.TextYAlignment = Enum.TextYAlignment.Top
songCounter.Size = UDim2.new(0.22,0,0.16,0)
songCounter.Position = UDim2.new(0.773,0,0.165,0)
songCounter.FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")
GUI.counter = songCounter

--// SONG NUMBER TEXTBOX
local songNum = Instance.new("TextBox", menu)
songNum.Name = "songnum"
songNum.PlaceholderText = "num"
songNum.PlaceholderColor3 = Color3.new(1,1,1)
songNum.Text = "0"
songNum.TextColor3 = Color3.new(1,1,1)
songNum.TextScaled = true
songNum.BackgroundTransparency = 1
songNum.Size = UDim2.new(0.098,0,0.258,0)
songNum.Position = UDim2.new(0.239,0,0.741,0)
songNum.FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")
GUI.songNum = songNum

--// NAVIGATION BUTTONS
local function createNavButton(name,text,posX,posY,sizeY)
	local btn = Instance.new("TextButton", menu)
	btn.Name = name
	btn.Text = text
	btn.TextScaled = true
	btn.TextColor3 = Color3.new(1,1,1)
	btn.BackgroundColor3 = Color3.new(0,0,0)
	btn.BackgroundTransparency = 0.9
	btn.Size = UDim2.new(0.098,0, sizeY,0)
	btn.Position = UDim2.new(posX,0,posY,0)
	btn.FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")
	btn.BorderSizePixel = 0
	return btn
end

GUI.backBtn = createNavButton("backsong","<",0.025,0.788,0.165)
GUI.nextBtn = createNavButton("nextsong",">",0.123,0.788,0.176)
GUI.playBtn = createNavButton("playpause","P",0.883,0.753,0.224)
GUI.startBtn = createNavButton("start","/",0.779,0.788,0.165)

--// NEW BUTTONS
-- Repeat mode button
local repeatBtn = createNavButton("repeatBtn","R",0.5,0.788,0.165)
GUI.repeatBtn = repeatBtn

-- Playlist switch button
local playlistBtn = createNavButton("playlistBtn","PL",0.6,0.788,0.165)
GUI.playlistBtn = playlistBtn

-- Volume toggle button
local volumeBtn = createNavButton("volumeBtn","V",0.7,0.788,0.165)
GUI.volumeBtn = volumeBtn

--// PROGRESS BAR
local progressBG = Instance.new("Frame", menu)
progressBG.Size = UDim2.new(0.95,0,0.02,0)
progressBG.Position = UDim2.new(0.025,0,0.72,0)
progressBG.BackgroundColor3 = Color3.new(0,0,0)
progressBG.BorderSizePixel = 3
progressBG.BorderColor3 = Color3.fromRGB(255,0,246)
GUI.progressBG = progressBG

local progressFill = Instance.new("Frame", progressBG)
progressFill.Size = UDim2.new(0,0,1,0)
progressFill.BackgroundColor3 = Color3.fromRGB(255,0,246)
progressFill.BorderSizePixel = 0
GUI.progressFill = progressFill

return GUI
