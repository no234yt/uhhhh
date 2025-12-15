local LMG2L = {}

local player = game:GetService("Players").LocalPlayer

LMG2L["pr3tysonggui_1"] = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
LMG2L["pr3tysonggui_1"].Name = "pr3tysonggui"
LMG2L["pr3tysonggui_1"].ClipToDeviceSafeArea = false
LMG2L["pr3tysonggui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- MAIN BUTTON
LMG2L["button_2"] = Instance.new("ImageButton", LMG2L["pr3tysonggui_1"])
LMG2L["button_2"].Name = "button"
LMG2L["button_2"].BorderSizePixel = 3
LMG2L["button_2"].BorderColor3 = Color3.fromRGB(255, 0, 246)
LMG2L["button_2"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
LMG2L["button_2"].Size = UDim2.new(0.04,0,0.092,0)
LMG2L["button_2"].Position = UDim2.new(0.938,0,0.389,0)

LMG2L["UIAspectRatioConstraint_c"] = Instance.new("UIAspectRatioConstraint", LMG2L["button_2"])

-- MENU
LMG2L["menu_3"] = Instance.new("Frame", LMG2L["button_2"])
LMG2L["menu_3"].Name = "menu"
LMG2L["menu_3"].BorderSizePixel = 3
LMG2L["menu_3"].BorderColor3 = Color3.fromRGB(255,0,246)
LMG2L["menu_3"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["menu_3"].Size = UDim2.new(7.08,0,3.69,0)
LMG2L["menu_3"].Position = UDim2.new(-7.43,0,-1.13,0)
LMG2L["menu_3"].Visible = false

-- SONG IMAGE
LMG2L["songimg_b"] = Instance.new("ImageButton", LMG2L["menu_3"])
LMG2L["songimg_b"].Name = "songimg"
LMG2L["songimg_b"].Size = UDim2.new(0.368,0,0.705,0)
LMG2L["songimg_b"].Position = UDim2.new(0.012,0,0.023,0)
LMG2L["songimg_b"].BackgroundTransparency = 1
LMG2L["songimg_b"].BorderSizePixel = 0

-- SONG NAME LABEL
LMG2L["currentsong_8"] = Instance.new("TextLabel", LMG2L["menu_3"])
LMG2L["currentsong_8"].Name = "currentsong"
LMG2L["currentsong_8"].Text = "song name"
LMG2L["currentsong_8"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["currentsong_8"].BackgroundTransparency = 1
LMG2L["currentsong_8"].TextScaled = true
LMG2L["currentsong_8"].TextXAlignment = Enum.TextXAlignment.Right
LMG2L["currentsong_8"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["currentsong_8"].Size = UDim2.new(0.613,0,0.2,0)
LMG2L["currentsong_8"].Position = UDim2.new(0.38,0,0.011,0)
LMG2L["currentsong_8"].FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")

-- SONG COUNTER
LMG2L["songcounter_9"] = Instance.new("TextLabel", LMG2L["menu_3"])
LMG2L["songcounter_9"].Name = "songcounter"
LMG2L["songcounter_9"].Text = "1/3"
LMG2L["songcounter_9"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["songcounter_9"].BackgroundTransparency = 1
LMG2L["songcounter_9"].TextScaled = true
LMG2L["songcounter_9"].TextXAlignment = Enum.TextXAlignment.Right
LMG2L["songcounter_9"].TextYAlignment = Enum.TextYAlignment.Top
LMG2L["songcounter_9"].Size = UDim2.new(0.22,0,0.16,0)
LMG2L["songcounter_9"].Position = UDim2.new(0.773,0,0.164,0)
LMG2L["songcounter_9"].FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")

-- SONG NUMBER INPUT
LMG2L["songnum_a"] = Instance.new("TextBox", LMG2L["menu_3"])
LMG2L["songnum_a"].Name = "songnum"
LMG2L["songnum_a"].Text = "0"
LMG2L["songnum_a"].PlaceholderText = "num"
LMG2L["songnum_a"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["songnum_a"].BackgroundTransparency = 1
LMG2L["songnum_a"].TextScaled = true
LMG2L["songnum_a"].Size = UDim2.new(0.098,0,0.258,0)
LMG2L["songnum_a"].Position = UDim2.new(0.239,0,0.741,0)
LMG2L["songnum_a"].FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")

-- PLAY/PAUSE BUTTON
LMG2L["play/pause_6"] = Instance.new("TextButton", LMG2L["menu_3"])
LMG2L["play/pause_6"].Name = "play/pause"
LMG2L["play/pause_6"].Text = "P"
LMG2L["play/pause_6"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["play/pause_6"].TextScaled = true
LMG2L["play/pause_6"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["play/pause_6"].BackgroundTransparency = 0.9
LMG2L["play/pause_6"].Size = UDim2.new(0.098,0,0.223,0)
LMG2L["play/pause_6"].Position = UDim2.new(0.883,0,0.752,0)
LMG2L["play/pause_6"].FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")

-- NEXT / BACK SONG
LMG2L["backsong_4"] = Instance.new("TextButton", LMG2L["menu_3"])
LMG2L["backsong_4"].Name = "backsong"
LMG2L["backsong_4"].Text = "<"
LMG2L["backsong_4"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["backsong_4"].TextScaled = true
LMG2L["backsong_4"].BackgroundTransparency = 0.9
LMG2L["backsong_4"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["backsong_4"].Size = UDim2.new(0.098,0,0.164,0)
LMG2L["backsong_4"].Position = UDim2.new(0.024,0,0.788,0)
LMG2L["backsong_4"].FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")

LMG2L["nextsong_5"] = Instance.new("TextButton", LMG2L["menu_3"])
LMG2L["nextsong_5"].Name = "nextsong"
LMG2L["nextsong_5"].Text = ">"
LMG2L["nextsong_5"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["nextsong_5"].TextScaled = true
LMG2L["nextsong_5"].BackgroundTransparency = 0.9
LMG2L["nextsong_5"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["nextsong_5"].Size = UDim2.new(0.098,0,0.176,0)
LMG2L["nextsong_5"].Position = UDim2.new(0.122,0,0.788,0)
LMG2L["nextsong_5"].FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")

-- ADDITIONAL BUTTONS: REPEAT / PLAYLIST / VOLUME / PROGRESS BAR
-- repeat button
LMG2L["repeat_btn"] = Instance.new("TextButton", LMG2L["menu_3"])
LMG2L["repeat_btn"].Name = "repeat_btn"
LMG2L["repeat_btn"].Text = "Repeat: OFF"
LMG2L["repeat_btn"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["repeat_btn"].TextScaled = true
LMG2L["repeat_btn"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["repeat_btn"].BackgroundTransparency = 0.9
LMG2L["repeat_btn"].Size = UDim2.new(0.15,0,0.08,0)
LMG2L["repeat_btn"].Position = UDim2.new(0.5,0,0.9,0)
LMG2L["repeat_btn"].FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")

-- playlist switch
LMG2L["playlist_btn"] = Instance.new("TextButton", LMG2L["menu_3"])
LMG2L["playlist_btn"].Name = "playlist_btn"
LMG2L["playlist_btn"].Text = "Switch Playlist"
LMG2L["playlist_btn"].TextColor3 = Color3.fromRGB(255,255,255)
LMG2L["playlist_btn"].TextScaled = true
LMG2L["playlist_btn"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["playlist_btn"].BackgroundTransparency = 0.9
LMG2L["playlist_btn"].Size = UDim2.new(0.15,0,0.08,0)
LMG2L["playlist_btn"].Position = UDim2.new(0.7,0,0.9,0)
LMG2L["playlist_btn"].FontFace = Font.new("rbxasset://fonts/families/IndieFlower.json")

-- progress bar background
LMG2L["progress_bg"] = Instance.new("Frame", LMG2L["menu_3"])
LMG2L["progress_bg"].Name = "progress_bg"
LMG2L["progress_bg"].BackgroundColor3 = Color3.fromRGB(0,0,0)
LMG2L["progress_bg"].BorderSizePixel = 3
LMG2L["progress_bg"].BorderColor3 = Color3.fromRGB(255,0,246)
LMG2L["progress_bg"].Size = UDim2.new(0.6,0,0.02,0)
LMG2L["progress_bg"].Position = UDim2.new(0.38,0,0.25,0)

-- progress fill
LMG2L["progress_fill"] = Instance.new("Frame", LMG2L["progress_bg"])
LMG2L["progress_fill"].Name = "progress_fill"
LMG2L["progress_fill"].BackgroundColor3 = Color3.fromRGB(255,0,246)
LMG2L["progress_fill"].Size = UDim2.new(0,0,1,0)
LMG2L["progress_fill"].Position = UDim2.new(0,0,0,0)

return LMG2L["pr3tysonggui_1"], require
