local Players = game:GetService("Players")
local player = Players.LocalPlayer
local PlayerGui = player:WaitForChild("PlayerGui")

-- GUI root
local gui = Instance.new("ScreenGui")
gui.Name = "pr3tysonggui"
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = PlayerGui

-- MAIN TOGGLE BUTTON
local button = Instance.new("ImageButton")
button.Name = "button"
button.Size = UDim2.new(0.04,0,0.09,0)
button.Position = UDim2.new(0.938,0,0.389,0)
button.BackgroundColor3 = Color3.new(0,0,0)
button.BorderSizePixel = 3
button.BorderColor3 = Color3.fromRGB(255,0,246)
button.Parent = gui

-- MENU FRAME
local menu = Instance.new("Frame")
menu.Name = "menu"
menu.Size = UDim2.new(7,0,3.7,0)
menu.Position = UDim2.new(-7.43,0,-1.13,0)
menu.BackgroundColor3 = Color3.new(0,0,0)
menu.BorderSizePixel = 3
menu.BorderColor3 = Color3.fromRGB(255,0,246)
menu.Parent = button

-- CURRENT SONG LABEL
local currentsong = Instance.new("TextLabel")
currentsong.Name = "currentsong"
currentsong.Text = "song name"
currentsong.TextColor3 = Color3.new(1,1,1)
currentsong.BackgroundTransparency = 1
currentsong.TextScaled = true
currentsong.TextWrapped = true
currentsong.Font = Enum.Font.IndieFlower
currentsong.Size = UDim2.new(0.61,0,0.2,0)
currentsong.Position = UDim2.new(0.38,0,0.01,0)
currentsong.Parent = menu

-- SONG COUNTER
local songcounter = Instance.new("TextLabel")
songcounter.Name = "songcounter"
songcounter.Text = "1/3"
songcounter.TextColor3 = Color3.new(1,1,1)
songcounter.BackgroundTransparency = 1
songcounter.TextScaled = true
songcounter.Font = Enum.Font.IndieFlower
songcounter.Size = UDim2.new(0.22,0,0.16,0)
songcounter.Position = UDim2.new(0.77,0,0.16,0)
songcounter.Parent = menu

-- SONG IMAGE
local songimg = Instance.new("ImageButton")
songimg.Name = "songimg"
songimg.BackgroundTransparency = 1
songimg.Size = UDim2.new(0.36,0,0.70,0)
songimg.Position = UDim2.new(0.01,0,0.02,0)
songimg.Parent = menu

-- PLAY/PAUSE BUTTON
local playBtn = Instance.new("TextButton")
playBtn.Name = "playpause"
playBtn.Text = "P"
playBtn.TextColor3 = Color3.new(1,1,1)
playBtn.TextScaled = true
playBtn.BackgroundTransparency = 0.9
playBtn.Font = Enum.Font.IndieFlower
playBtn.Size = UDim2.new(0.098,0,0.223,0)
playBtn.Position = UDim2.new(0.88,0,0.75,0)
playBtn.Parent = menu

-- NEXT / BACK BUTTONS
local nextBtn = Instance.new("TextButton")
nextBtn.Name = "nextsong"
nextBtn.Text = ">"
nextBtn.TextColor3 = Color3.new(1,1,1)
nextBtn.TextScaled = true
nextBtn.BackgroundTransparency = 0.9
nextBtn.Font = Enum.Font.IndieFlower
nextBtn.Size = UDim2.new(0.098,0,0.176,0)
nextBtn.Position = UDim2.new(0.12,0,0.78,0)
nextBtn.Parent = menu

local backBtn = Instance.new("TextButton")
backBtn.Name = "backsong"
backBtn.Text = "<"
backBtn.TextColor3 = Color3.new(1,1,1)
backBtn.TextScaled = true
backBtn.BackgroundTransparency = 0.9
backBtn.Font = Enum.Font.IndieFlower
backBtn.Size = UDim2.new(0.098,0,0.164,0)
backBtn.Position = UDim2.new(0.02,0,0.78,0)
backBtn.Parent = menu

-- REPEAT BUTTON
local repeatBtn = Instance.new("TextButton")
repeatBtn.Name = "repeat"
repeatBtn.Text = "OFF"
repeatBtn.TextColor3 = Color3.new(1,1,1)
repeatBtn.TextScaled = true
repeatBtn.BackgroundTransparency = 0.9
repeatBtn.Font = Enum.Font.IndieFlower
repeatBtn.Size = UDim2.new(0.098,0,0.16,0)
repeatBtn.Position = UDim2.new(0.24,0,0.78,0)
repeatBtn.Parent = menu

-- PLAYLIST SWITCH BUTTON
local playlistBtn = Instance.new("TextButton")
playlistBtn.Name = "playlist"
playlistBtn.Text = "Playlist"
playlistBtn.TextColor3 = Color3.new(1,1,1)
playlistBtn.TextScaled = true
playlistBtn.BackgroundTransparency = 0.9
playlistBtn.Font = Enum.Font.IndieFlower
playlistBtn.Size = UDim2.new(0.15,0,0.16,0)
playlistBtn.Position = UDim2.new(0.38,0,0.78,0)
playlistBtn.Parent = menu

-- PROGRESS BAR (BLACK/PINK)
local progressBG = Instance.new("Frame")
progressBG.Name = "progressBG"
progressBG.BackgroundColor3 = Color3.new(0,0,0)
progressBG.BorderSizePixel = 3
progressBG.BorderColor3 = Color3.fromRGB(255,0,246)
progressBG.Size = UDim2.new(0.9,0,0.02,0)
progressBG.Position = UDim2.new(0.05,0,0.95,0)
progressBG.Parent = menu

local progressFill = Instance.new("Frame")
progressFill.Name = "progressFill"
progressFill.BackgroundColor3 = Color3.fromRGB(255,0,246)
progressFill.Size = UDim2.new(0,0,1,0)
progressFill.Position = UDim2.new(0,0,0,0)
progressFill.Parent = progressBG

-- VOLUME BUTTON / SLIDER
local volumeBtn = Instance.new("TextButton")
volumeBtn.Name = "volume"
volumeBtn.Text = "VOL"
volumeBtn.TextColor3 = Color3.new(1,1,1)
volumeBtn.TextScaled = true
volumeBtn.BackgroundTransparency = 0.9
volumeBtn.Font = Enum.Font.IndieFlower
volumeBtn.Size = UDim2.new(0.098,0,0.16,0)
volumeBtn.Position = UDim2.new(0.56,0,0.78,0)
volumeBtn.Parent = menu

local volumeSlider = Instance.new("Frame")
volumeSlider.Name = "volumeSlider"
volumeSlider.BackgroundColor3 = Color3.new(0,0,0)
volumeSlider.BorderSizePixel = 3
volumeSlider.BorderColor3 = Color3.fromRGB(255,0,246)
volumeSlider.Size = UDim2.new(0.15,0,0.02,0)
volumeSlider.Position = UDim2.new(0.6,0,0.90,0)
volumeSlider.Parent = menu

local volumeFill = Instance.new("Frame")
volumeFill.Name = "volumeFill"
volumeFill.BackgroundColor3 = Color3.fromRGB(255,0,246)
volumeFill.Size = UDim2.new(0.5,0,1,0)
volumeFill.Position = UDim2.new(0,0,0,0)
volumeFill.Parent = volumeSlider

-- Return GUI root
return gui
