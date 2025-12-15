local LMG2L = {}

local Players = game:GetService("Players")
local lp = Players.LocalPlayer

-- Main GUI
LMG2L["pr3tysonggui_1"] = Instance.new("ScreenGui")
LMG2L["pr3tysonggui_1"].Name = "pr3tysonggui"
LMG2L["pr3tysonggui_1"].Parent = lp:WaitForChild("PlayerGui")
LMG2L["pr3tysonggui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LMG2L["pr3tysonggui_1"].ResetOnSpawn = false

-- Main Button (draggable)
LMG2L["button_2"] = Instance.new("ImageButton")
LMG2L["button_2"].Name = "button"
LMG2L["button_2"].Parent = LMG2L["pr3tysonggui_1"]
LMG2L["button_2"].BorderSizePixel = 3
LMG2L["button_2"].BorderColor3 = Color3.fromRGB(255, 0, 246)
LMG2L["button_2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LMG2L["button_2"].Size = UDim2.new(0.04, 0, 0.09, 0)
LMG2L["button_2"].Position = UDim2.new(0.938, 0, 0.389, 0)
LMG2L["button_2"].AutoButtonColor = false

-- Menu Frame (hidden initially)
LMG2L["menu_3"] = Instance.new("Frame")
LMG2L["menu_3"].Name = "menu"
LMG2L["menu_3"].Parent = LMG2L["pr3tysonggui_1"]
LMG2L["menu_3"].BorderSizePixel = 3
LMG2L["menu_3"].BorderColor3 = Color3.fromRGB(255, 0, 246)
LMG2L["menu_3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LMG2L["menu_3"].Size = UDim2.new(0.5, 0, 0.4, 0)
LMG2L["menu_3"].Position = UDim2.new(0.25, 0, 0.3, 0)
LMG2L["menu_3"].Visible = false

-- Current Song Label
LMG2L["currentsong_8"] = Instance.new("TextLabel")
LMG2L["currentsong_8"].Name = "currentsong"
LMG2L["currentsong_8"].Parent = LMG2L["menu_3"]
LMG2L["currentsong_8"].Text = "No Song"
LMG2L["currentsong_8"].TextColor3 = Color3.fromRGB(255, 255, 255)
LMG2L["currentsong_8"].BackgroundTransparency = 1
LMG2L["currentsong_8"].Font = Enum.Font.IndieFlower
LMG2L["currentsong_8"].TextScaled = true
LMG2L["currentsong_8"].Size = UDim2.new(0.6, 0, 0.1, 0)
LMG2L["currentsong_8"].Position = UDim2.new(0.38, 0, 0.02, 0)
LMG2L["currentsong_8"].TextXAlignment = Enum.TextXAlignment.Right

-- Song Image
LMG2L["songimg_b"] = Instance.new("ImageLabel")
LMG2L["songimg_b"].Name = "songimg"
LMG2L["songimg_b"].Parent = LMG2L["menu_3"]
LMG2L["songimg_b"].Size = UDim2.new(0.36, 0, 0.7, 0)
LMG2L["songimg_b"].Position = UDim2.new(0.02, 0, 0.02, 0)
LMG2L["songimg_b"].BackgroundTransparency = 1
LMG2L["songimg_b"].BorderSizePixel = 0
LMG2L["songimg_b"].Image = ""

-- Buttons: Back, Next, Play/Pause, Repeat
local function makeButton(name, text, pos)
    local btn = Instance.new("TextButton")
    btn.Name = name
    btn.Parent = LMG2L["menu_3"]
    btn.Text = text
    btn.Font = Enum.Font.IndieFlower
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.BackgroundColor3 = Color3.fromRGB(0,0,0)
    btn.BackgroundTransparency = 0.9
    btn.Size = UDim2.new(0.1,0,0.15,0)
    btn.Position = pos
    btn.TextScaled = true
    btn.BorderSizePixel = 0
    return btn
end

LMG2L["backsong_4"] = makeButton("backsong","<", UDim2.new(0.02,0,0.78,0))
LMG2L["nextsong_5"] = makeButton("nextsong",">", UDim2.new(0.12,0,0.78,0))
LMG2L["playpause_6"] = makeButton("playpause","P", UDim2.new(0.88,0,0.75,0))
LMG2L["repeat_7"] = makeButton("repeat","OFF", UDim2.new(0.78,0,0.75,0))

-- Song Number TextBox
LMG2L["songnum_a"] = Instance.new("TextBox")
LMG2L["songnum_a"].Parent = LMG2L["menu_3"]
LMG2L["songnum_a"].PlaceholderText = "num"
LMG2L["songnum_a"].Text = ""
LMG2L["songnum_a"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["songnum_a"].BackgroundTransparency = 1
LMG2L["songnum_a"].Font = Enum.Font.IndieFlower
LMG2L["songnum_a"].TextScaled = true
LMG2L["songnum_a"].Size = UDim2.new(0.1,0,0.25,0)
LMG2L["songnum_a"].Position = UDim2.new(0.24,0,0.74,0)

-- Progress Bar Background
LMG2L["progress_bg"] = Instance.new("Frame")
LMG2L["progress_bg"].Parent = LMG2L["menu_3"]
LMG2L["progress_bg"].Size = UDim2.new(0.6,0,0.05,0)
LMG2L["progress_bg"].Position = UDim2.new(0.38,0,0.15,0)
LMG2L["progress_bg"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["progress_bg"].BorderSizePixel = 3
LMG2L["progress_bg"].BorderColor3 = Color3.fromRGB(255,0,246)

-- Progress Bar Fill
LMG2L["progress_fill"] = Instance.new("Frame")
LMG2L["progress_fill"].Parent = LMG2L["progress_bg"]
LMG2L["progress_fill"].Size = UDim2.new(0,0,1,0)
LMG2L["progress_fill"].BackgroundColor3 = Color3.fromRGB(255,0,246)
LMG2L["progress_fill"].BorderSizePixel = 0

return LMG2L
