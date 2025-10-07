-- MainGUI.lua
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- Helper function
local function create(instance, props)
	local obj = Instance.new(instance)
	for k, v in pairs(props) do obj[k] = v end
	return obj
end

-- ScreenGui
local screenGui = create("ScreenGui", {
	Name = "ScreenGui",
	ResetOnSpawn = false,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	Parent = playerGui
})

-- Small Information Popup
local smallInfo = create("Frame", {
	Name = "SmallInformation",
	Size = UDim2.new(0.35, 0, 0.3, 0),
	Position = UDim2.new(0.5, 0, 0.5, 0),
	AnchorPoint = Vector2.new(0.5, 0.5),
	BackgroundColor3 = Color3.fromRGB(20, 20, 20),
	BorderSizePixel = 0,
	Visible = false,
	Parent = screenGui
})

create("UICorner", {CornerRadius = UDim.new(0, 10), Parent = smallInfo})
create("UIStroke", {Thickness = 2, Color = Color3.fromRGB(255, 255, 255), Parent = smallInfo})

local title = create("TextLabel", {
	Name = "Title",
	Text = "Title",
	Font = Enum.Font.GothamBold,
	TextSize = 22,
	TextColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	Position = UDim2.new(0, 10, 0, 10),
	Size = UDim2.new(1, -20, 0, 30),
	Parent = smallInfo
})

local desc = create("TextLabel", {
	Name = "Description",
	Text = "Description",
	TextWrapped = true,
	TextYAlignment = Enum.TextYAlignment.Top,
	Font = Enum.Font.Gotham,
	TextSize = 16,
	TextColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	Position = UDim2.new(0, 10, 0, 45),
	Size = UDim2.new(1, -20, 1, -90),
	Parent = smallInfo
})

local buttons = create("Frame", {
	Name = "Buttons",
	Size = UDim2.new(1, -20, 0, 40),
	Position = UDim2.new(0, 10, 1, -50),
	BackgroundTransparency = 1,
	Parent = smallInfo
})

local example = create("TextButton", {
	Name = "ButtonExample",
	Text = "OK",
	Font = Enum.Font.GothamBold,
	TextSize = 18,
	TextColor3 = Color3.new(1, 1, 1),
	BackgroundColor3 = Color3.fromRGB(100, 100, 255),
	Size = UDim2.new(1, 0, 1, 0),
	Parent = buttons
})
create("UICorner", {CornerRadius = UDim.new(0, 6), Parent = example})

-- CMDBar
local cmdBar = create("Frame", {
	Name = "CMDBar",
	Size = UDim2.new(0.5, 0, 0.15, 0),
	AnchorPoint = Vector2.new(0.5, 1),
	Position = UDim2.new(0.5, 0, 1, -20),
	BackgroundColor3 = Color3.fromRGB(25, 25, 25),
	BorderSizePixel = 0,
	Parent = screenGui
})

create("UICorner", {CornerRadius = UDim.new(0, 12), Parent = cmdBar})
create("UIStroke", {Thickness = 2, Color = Color3.fromRGB(255, 255, 255), Parent = cmdBar})

local togglegui = create("TextButton", {
	Name = "togglegui",
	Text = ">",
	TextSize = 22,
	Font = Enum.Font.GothamBold,
	TextColor3 = Color3.new(1, 1, 1),
	BackgroundColor3 = Color3.fromRGB(50, 50, 50),
	AnchorPoint = Vector2.new(1, 0.5),
	Position = UDim2.new(1, 0, 0.5, 0),
	Size = UDim2.new(0, 30, 0, 60),
	Parent = cmdBar
})
create("UICorner", {CornerRadius = UDim.new(0, 10), Parent = togglegui})

local gui = create("Frame", {
	Name = "GUI",
	Size = UDim2.new(1, -40, 1, -20),
	Position = UDim2.new(0, 10, 0, 10),
	BackgroundTransparency = 1,
	Parent = cmdBar
})

create("UIListLayout", {Padding = UDim.new(0, 5), Parent = gui})

local cmdBox = create("TextBox", {
	Name = "CommandTextBox",
	PlaceholderText = "Type a command...",
	Font = Enum.Font.Gotham,
	TextSize = 16,
	TextColor3 = Color3.new(1, 1, 1),
	BackgroundColor3 = Color3.fromRGB(35, 35, 35),
	Size = UDim2.new(1, 0, 0, 35),
	Parent = gui
})
create("UICorner", {CornerRadius = UDim.new(0, 6), Parent = cmdBox})

local helpFrame = create("Frame", {
	Name = "Help",
	Size = UDim2.new(1, 0, 1, -45),
	BackgroundTransparency = 1,
	Parent = gui
})

local helpInfo = create("TextLabel", {
	Name = "HelpInformation",
	Text = "Help output will appear here.",
	TextWrapped = true,
	TextXAlignment = Enum.TextXAlignment.Left,
	TextYAlignment = Enum.TextYAlignment.Top,
	Font = Enum.Font.Gotham,
	TextSize = 14,
	TextColor3 = Color3.new(1, 1, 1),
	BackgroundTransparency = 1,
	Size = UDim2.new(1, 0, 1, 0),
	Parent = helpFrame
})

-- Return GUI
return screenGui
