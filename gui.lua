-- pr3tysonggui optimized GUI

local LMG2L = {}

local function createButton(parent, name, size, pos, text, fontSize)
	local btn = Instance.new("TextButton")
	btn.Name = name
	btn.Size = size
	btn.Position = pos
	btn.BackgroundColor3 = Color3.fromRGB(0,0,0)
	btn.BorderColor3 = Color3.fromRGB(255,0,246)
	btn.BorderSizePixel = 3
	btn.Text = text or ""
	btn.TextColor3 = Color3.fromRGB(255,255,255)
	btn.TextScaled = fontSize or true
	btn.FontFace = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	btn.BackgroundTransparency = 0.9
	btn.Parent = parent
	return btn
end

local function createLabel(parent, name, size, pos, text)
	local lbl = Instance.new("TextLabel")
	lbl.Name = name
	lbl.Size = size
	lbl.Position = pos
	lbl.BackgroundColor3 = Color3.fromRGB(0,0,0)
	lbl.BackgroundTransparency = 1
	lbl.TextColor3 = Color3.fromRGB(255,255,255)
	lbl.TextScaled = true
	lbl.Text = text or ""
	lbl.FontFace = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	lbl.TextXAlignment = Enum.TextXAlignment.Right
	lbl.TextYAlignment = Enum.TextYAlignment.Top
	lbl.Parent = parent
	return lbl
end

-- Main ScreenGui
LMG2L["pr3tysonggui_1"] = Instance.new("ScreenGui")
LMG2L["pr3tysonggui_1"].Name = "pr3tysonggui"
LMG2L["pr3tysonggui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LMG2L["pr3tysonggui_1"].Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Main Button
LMG2L["button"] = Instance.new("ImageButton")
LMG2L["button"].Name = "button"
LMG2L["button"].Size = UDim2.new(0.04,0,0.09,0)
LMG2L["button"].Position = UDim2.new(0.938,0,0.39,0)
LMG2L["button"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["button"].BorderColor3 = Color3.fromRGB(255,0,246)
LMG2L["button"].BorderSizePixel = 3
LMG2L["button"].Parent = LMG2L["pr3tysonggui_1"]

LMG2L["UIAspectRatioConstraint"] = Instance.new("UIAspectRatioConstraint", LMG2L["button"])

-- Menu Frame
LMG2L["menu"] = Instance.new("Frame")
LMG2L["menu"].Name = "menu"
LMG2L["menu"].Size = UDim2.new(7.08,0,3.69,0)
LMG2L["menu"].Position = UDim2.new(-7.43,0,-1.13,0)
LMG2L["menu"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["menu"].BorderColor3 = Color3.fromRGB(255,0,246)
LMG2L["menu"].BorderSizePixel = 3
LMG2L["menu"].Parent = LMG2L["button"]

-- Song Image / Album Cover
LMG2L["songimg"] = Instance.new("ImageButton")
LMG2L["songimg"].Name = "songimg"
LMG2L["songimg"].Size = UDim2.new(0.37,0,0.70,0)
LMG2L["songimg"].Position = UDim2.new(0.01,0,0.02,0)
LMG2L["songimg"].BackgroundTransparency = 1
LMG2L["songimg"].Parent = LMG2L["menu"]

-- Song Name Label
LMG2L["currentsong"] = createLabel(LMG2L["menu"], "currentsong", UDim2.new(0.61,0,0.2,0), UDim2.new(0.38,0,0.01,0), "song name")

-- Song Counter Label
LMG2L["songcounter"] = createLabel(LMG2L["menu"], "songcounter", UDim2.new(0.22,0,0.16,0), UDim2.new(0.77,0,0.16,0), "1/3")

-- Song Number TextBox
LMG2L["songnum"] = Instance.new("TextBox")
LMG2L["songnum"].Name = "songnum"
LMG2L["songnum"].Size = UDim2.new(0.098,0,0.26,0)
LMG2L["songnum"].Position = UDim2.new(0.23,0,0.74,0)
LMG2L["songnum"].Text = "0"
LMG2L["songnum"].PlaceholderText = "num"
LMG2L["songnum"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["songnum"].BackgroundTransparency = 1
LMG2L["songnum"].TextScaled = true
LMG2L["songnum"].FontFace = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
LMG2L["songnum"].Parent = LMG2L["menu"]

-- Play / Pause Button
LMG2L["playpause"] = createButton(LMG2L["menu"], "playpause", UDim2.new(0.098,0,0.22,0), UDim2.new(0.88,0,0.75,0), "P")

-- Next / Previous Buttons
LMG2L["nextsong"] = createButton(LMG2L["menu"], "nextsong", UDim2.new(0.098,0,0.17,0), UDim2.new(0.12,0,0.79,0), ">")
LMG2L["backsong"] = createButton(LMG2L["menu"], "backsong", UDim2.new(0.098,0,0.16,0), UDim2.new(0.02,0,0.79,0), "<")

-- Start / Stop Button (optional feature)
LMG2L["start"] = createButton(LMG2L["menu"], "start", UDim2.new(0.10,0,0.16,0), UDim2.new(0.77,0,0.79,0), "/")

-- Repeat Mode Button
LMG2L["repeatbtn"] = createButton(LMG2L["menu"], "repeatbtn", UDim2.new(0.08,0,0.08,0), UDim2.new(0.9,0,0.1,0), "OFF")

-- Playlist Switch Button
LMG2L["playlistbtn"] = createButton(LMG2L["menu"], "playlistbtn", UDim2.new(0.12,0,0.08,0), UDim2.new(0.01,0,0.1,0), "Playlist")

-- Progress Bar
LMG2L["progressbg"] = Instance.new("Frame")
LMG2L["progressbg"].Name = "progressbg"
LMG2L["progressbg"].Size = UDim2.new(0.6,0,0.03,0)
LMG2L["progressbg"].Position = UDim2.new(0.38,0,0.22,0)
LMG2L["progressbg"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["progressbg"].BorderColor3 = Color3.fromRGB(255,0,246)
LMG2L["progressbg"].BorderSizePixel = 3
LMG2L["progressbg"].Parent = LMG2L["menu"]

LMG2L["progressfill"] = Instance.new("Frame")
LMG2L["progressfill"].Name = "progressfill"
LMG2L["progressfill"].Size = UDim2.new(0,0,1,0)
LMG2L["progressfill"].Position = UDim2.new(0,0,0,0)
LMG2L["progressfill"].BackgroundColor3 = Color3.fromRGB(255,0,246)
LMG2L["progressfill"].BorderSizePixel = 0
LMG2L["progressfill"].Parent = LMG2L["progressbg"]

-- Volume Button
LMG2L["volumebtn"] = createButton(LMG2L["menu"], "volumebtn", UDim2.new(0.08,0,0.08,0), UDim2.new(0.9,0,0.2,0), "VOL")

-- Volume Slider Background
LMG2L["volumebg"] = Instance.new("Frame")
LMG2L["volumebg"].Name = "volumebg"
LMG2L["volumebg"].Size = UDim2.new(0.15,0,0.03,0)
LMG2L["volumebg"].Position = UDim2.new(0.75,0,0.28,0)
LMG2L["volumebg"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["volumebg"].BorderColor3 = Color3.fromRGB(255,0,246)
LMG2L["volumebg"].BorderSizePixel = 3
LMG2L["volumebg"].Visible = false
LMG2L["volumebg"].Parent = LMG2L["menu"]

-- Volume Fill
LMG2L["volumefill"] = Instance.new("Frame")
LMG2L["volumefill"].Name = "volumefill"
LMG2L["volumefill"].Size = UDim2.new(0.5,0,1,0)
LMG2L["volumefill"].Position = UDim2.new(0,0,0,0)
LMG2L["volumefill"].BackgroundColor3 = Color3.fromRGB(255,0,246)
LMG2L["volumefill"].BorderSizePixel = 0
LMG2L["volumefill"].Parent = LMG2L["volumebg"]

return LMG2L["pr3tysonggui_1"], require
