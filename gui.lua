-- pr3tysonggui optimized GUI
local Players = game:GetService("Players")
local gui = Instance.new("ScreenGui")
gui.Name = "pr3tysonggui"
gui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.ClipToDeviceSafeArea = false

-- helper function to create buttons/textlabels
local function createButton(parent, props)
	local btn = Instance.new("TextButton")
	for k,v in pairs(props) do
		btn[k] = v
	end
	btn.Parent = parent
	return btn
end

local function createLabel(parent, props)
	local lbl = Instance.new("TextLabel")
	for k,v in pairs(props) do
		lbl[k] = v
	end
	lbl.Parent = parent
	return lbl
end

local function createImageButton(parent, props)
	local btn = Instance.new("ImageButton")
	for k,v in pairs(props) do
		btn[k] = v
	end
	btn.Parent = parent
	return btn
end

local function createFrame(parent, props)
	local f = Instance.new("Frame")
	for k,v in pairs(props) do
		f[k] = v
	end
	f.Parent = parent
	return f
end

-- MAIN DRAGGABLE BUTTON
local mainBtn = createImageButton(gui, {
	Name = "button",
	Size = UDim2.new(0.04,0,0.09,0),
	Position = UDim2.new(0.938,0,0.39,0),
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	BorderSizePixel = 3,
	BorderColor3 = Color3.fromRGB(255,0,246),
	AutoButtonColor = false,
})

-- ASPECT RATIO
Instance.new("UIAspectRatioConstraint", mainBtn)

-- MENU FRAME
local menu = createFrame(mainBtn, {
	Name = "menu",
	Size = UDim2.new(7.08,0,3.69,0),
	Position = UDim2.new(-7.43,0,-1.13,0),
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	BorderColor3 = Color3.fromRGB(255,0,246),
	BorderSizePixel = 3,
	Visible = false,
})

-- SONG IMAGE / COVER
local songImg = createImageButton(menu, {
	Name = "songimg",
	Size = UDim2.new(0.37,0,0.7,0),
	Position = UDim2.new(0.01,0,0.02,0),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
})

-- CURRENT SONG LABEL
local currSong = createLabel(menu, {
	Name = "currentsong",
	Size = UDim2.new(0.61,0,0.2,0),
	Position = UDim2.new(0.38,0,0.01,0),
	Text = "song name",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(255,255,255),
	BackgroundTransparency = 1,
	Font = Enum.Font.IndieFlower,
	TextXAlignment = Enum.TextXAlignment.Right,
	TextYAlignment = Enum.TextYAlignment.Top,
})

-- SONG COUNTER
local counter = createLabel(menu, {
	Name = "songcounter",
	Size = UDim2.new(0.22,0,0.16,0),
	Position = UDim2.new(0.77,0,0.16,0),
	Text = "1/3",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(255,255,255),
	BackgroundTransparency = 1,
	Font = Enum.Font.IndieFlower,
	TextXAlignment = Enum.TextXAlignment.Right,
	TextYAlignment = Enum.TextYAlignment.Top,
})

-- SONG NUMBER TEXTBOX
local songNum = Instance.new("TextBox", menu)
songNum.Name = "songnum"
songNum.Size = UDim2.new(0.098,0,0.26,0)
songNum.Position = UDim2.new(0.24,0,0.74,0)
songNum.Text = "0"
songNum.PlaceholderText = "num"
songNum.TextScaled = true
songNum.BackgroundTransparency = 1
songNum.TextColor3 = Color3.fromRGB(255,255,255)
songNum.Font = Enum.Font.IndieFlower

-- PREV / NEXT BUTTONS
local prevBtn = createButton(menu, {
	Name = "backsong",
	Size = UDim2.new(0.098,0,0.16,0),
	Position = UDim2.new(0.024,0,0.78,0),
	Text = "<",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(255,255,255),
	BackgroundTransparency = 0.9,
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	Font = Enum.Font.IndieFlower,
	BorderSizePixel = 0,
})

local nextBtn = createButton(menu, {
	Name = "nextsong",
	Size = UDim2.new(0.098,0,0.176,0),
	Position = UDim2.new(0.12,0,0.78,0),
	Text = ">",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(255,255,255),
	BackgroundTransparency = 0.9,
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	Font = Enum.Font.IndieFlower,
	BorderSizePixel = 0,
})

-- PLAY / PAUSE BUTTON
local playBtn = createButton(menu, {
	Name = "playpause",
	Size = UDim2.new(0.098,0,0.22,0),
	Position = UDim2.new(0.88,0,0.75,0),
	Text = "P",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(255,255,255),
	BackgroundTransparency = 0.9,
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	Font = Enum.Font.IndieFlower,
	BorderSizePixel = 0,
})

-- START BUTTON (for your previous use)
local startBtn = createButton(menu, {
	Name = "start",
	Size = UDim2.new(0.104,0,0.164,0),
	Position = UDim2.new(0.779,0,0.788,0),
	Text = "/",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(255,255,255),
	BackgroundTransparency = 0.9,
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	Font = Enum.Font.IndieFlower,
	BorderSizePixel = 0,
})

-- REPEAT MODE BUTTON
local repeatBtn = createButton(menu, {
	Name = "repeatBtn",
	Size = UDim2.new(0.08,0,0.08,0),
	Position = UDim2.new(0.35,0,0.78,0),
	Text = "OFF",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(255,255,255),
	BackgroundTransparency = 0.9,
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	Font = Enum.Font.IndieFlower,
	BorderSizePixel = 0,
})

-- PLAYLIST SWITCH BUTTON
local playlistBtn = createButton(menu, {
	Name = "playlistBtn",
	Size = UDim2.new(0.1,0,0.08,0),
	Position = UDim2.new(0.46,0,0.78,0),
	Text = "Playlist",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(255,255,255),
	BackgroundTransparency = 0.9,
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	Font = Enum.Font.IndieFlower,
	BorderSizePixel = 0,
})

-- VOLUME BUTTON
local volBtn = createButton(menu, {
	Name = "volBtn",
	Size = UDim2.new(0.08,0,0.08,0),
	Position = UDim2.new(0.58,0,0.78,0),
	Text = "Vol",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(255,255,255),
	BackgroundTransparency = 0.9,
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	Font = Enum.Font.IndieFlower,
	BorderSizePixel = 0,
})

-- PROGRESS BAR
local progressBG = createFrame(menu, {
	Name = "progressBG",
	Size = UDim2.new(0.8,0,0.02,0),
	Position = UDim2.new(0.12,0,0.7,0),
	BackgroundColor3 = Color3.fromRGB(0,0,0),
	BorderColor3 = Color3.fromRGB(255,0,246),
	BorderSizePixel = 3,
})

local progressFill = createFrame(progressBG, {
	Name = "progressFill",
	Size = UDim2.new(0,0,1,0),
	Position = UDim2.new(0,0,0,0),
	BackgroundColor3 = Color3.fromRGB(255,0,246),
})

-- Return GUI & references
return {
	gui = gui,
	mainBtn = mainBtn,
	menu = menu,
	songImg = songImg,
	currSong = currSong,
	counter = counter,
	songNum = songNum,
	prevBtn = prevBtn,
	nextBtn = nextBtn,
	playBtn = playBtn,
	startBtn = startBtn,
	repeatBtn = repeatBtn,
	playlistBtn = playlistBtn,
	volBtn = volBtn,
	progressBG = progressBG,
	progressFill = progressFill
}
