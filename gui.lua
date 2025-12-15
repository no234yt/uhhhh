
local LMG2L = {};

LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


LMG2L["toggler_2"] = Instance.new("ImageButton", LMG2L["ScreenGui_1"]);
LMG2L["toggler_2"]["BorderSizePixel"] = 4;
LMG2L["toggler_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["toggler_2"]["Size"] = UDim2.new(0.03788, 0, 0.08826, 0);
LMG2L["toggler_2"]["BorderColor3"] = Color3.fromRGB(255, 0, 138);
LMG2L["toggler_2"]["Name"] = [[toggler]];
LMG2L["toggler_2"]["Position"] = UDim2.new(0.94694, 0, 0.32095, 0);


LMG2L["menu_3"] = Instance.new("Frame", LMG2L["toggler_2"]);
LMG2L["menu_3"]["BorderSizePixel"] = 4;
LMG2L["menu_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["menu_3"]["Size"] = UDim2.new(6.72727, 0, 2.27273, 0);
LMG2L["menu_3"]["Position"] = UDim2.new(-7, 0, -0.54545, 0);
LMG2L["menu_3"]["BorderColor3"] = Color3.fromRGB(255, 0, 138);
LMG2L["menu_3"]["Name"] = [[menu]];


LMG2L["song title_4"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["song title_4"]["TextWrapped"] = true;
LMG2L["song title_4"]["BorderSizePixel"] = 0;
LMG2L["song title_4"]["TextSize"] = 12;
LMG2L["song title_4"]["TextXAlignment"] = Enum.TextXAlignment.Right;
LMG2L["song title_4"]["TextScaled"] = true;
LMG2L["song title_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["song title_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["song title_4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["song title_4"]["BackgroundTransparency"] = 1;
LMG2L["song title_4"]["Size"] = UDim2.new(0.84459, 0, 0.5, 0);
LMG2L["song title_4"]["Text"] = [[Name]];
LMG2L["song title_4"]["Name"] = [[song title]];
LMG2L["song title_4"]["Position"] = UDim2.new(0.14189, 0, 0.04, 0);


LMG2L["counter_5"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["counter_5"]["TextWrapped"] = true;
LMG2L["counter_5"]["BorderSizePixel"] = 0;
LMG2L["counter_5"]["TextSize"] = 12;
LMG2L["counter_5"]["TextXAlignment"] = Enum.TextXAlignment.Right;
LMG2L["counter_5"]["TextScaled"] = true;
LMG2L["counter_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["counter_5"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["counter_5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["counter_5"]["BackgroundTransparency"] = 1;
LMG2L["counter_5"]["Size"] = UDim2.new(0.10135, 0, 0.18, 0);
LMG2L["counter_5"]["Text"] = [[1/3]];
LMG2L["counter_5"]["Name"] = [[counter]];
LMG2L["counter_5"]["Position"] = UDim2.new(0.88514, 0, 0.42, 0);


LMG2L["backsong_6"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["backsong_6"]["BorderSizePixel"] = 0;
LMG2L["backsong_6"]["TextSize"] = 36;
LMG2L["backsong_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["backsong_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["backsong_6"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["backsong_6"]["BackgroundTransparency"] = 1;
LMG2L["backsong_6"]["Size"] = UDim2.new(0.07432, 0, 0.28, 0);
LMG2L["backsong_6"]["Text"] = [[<]];
LMG2L["backsong_6"]["Name"] = [[backsong]];
LMG2L["backsong_6"]["Position"] = UDim2.new(0.02027, 0, 0.68, 0);


LMG2L["nextsong_7"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["nextsong_7"]["BorderSizePixel"] = 0;
LMG2L["nextsong_7"]["TextSize"] = 36;
LMG2L["nextsong_7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["nextsong_7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["nextsong_7"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["nextsong_7"]["BackgroundTransparency"] = 1;
LMG2L["nextsong_7"]["Size"] = UDim2.new(0.08108, 0, 0.22, 0);
LMG2L["nextsong_7"]["Text"] = [[>]];
LMG2L["nextsong_7"]["Name"] = [[nextsong]];
LMG2L["nextsong_7"]["Position"] = UDim2.new(0.10135, 0, 0.72, 0);


LMG2L["play/stop_8"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["play/stop_8"]["BorderSizePixel"] = 0;
LMG2L["play/stop_8"]["TextSize"] = 36;
LMG2L["play/stop_8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["play/stop_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["play/stop_8"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["play/stop_8"]["BackgroundTransparency"] = 1;
LMG2L["play/stop_8"]["Size"] = UDim2.new(0.08108, 0, 0.2, 0);
LMG2L["play/stop_8"]["Text"] = [[P]];
LMG2L["play/stop_8"]["Name"] = [[play/stop]];
LMG2L["play/stop_8"]["Position"] = UDim2.new(0.89865, 0, 0.76, 0);


LMG2L["rev_9"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["rev_9"]["BorderSizePixel"] = 0;
LMG2L["rev_9"]["TextSize"] = 36;
LMG2L["rev_9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["rev_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["rev_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["rev_9"]["BackgroundTransparency"] = 1;
LMG2L["rev_9"]["Size"] = UDim2.new(0.08784, 0, 0.22, 0);
LMG2L["rev_9"]["Text"] = [[/]];
LMG2L["rev_9"]["Name"] = [[rev]];
LMG2L["rev_9"]["Position"] = UDim2.new(0.7973, 0, 0.76, 0);


LMG2L["volume_a"] = Instance.new("Frame", LMG2L["menu_3"]);
LMG2L["volume_a"]["BorderSizePixel"] = 4;
LMG2L["volume_a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["volume_a"]["Size"] = UDim2.new(0.13514, 0, 1, 0);
LMG2L["volume_a"]["Position"] = UDim2.new(-0.16892, 0, 0, 0);
LMG2L["volume_a"]["BorderColor3"] = Color3.fromRGB(255, 0, 138);
LMG2L["volume_a"]["Name"] = [[volume]];


LMG2L["bg_b"] = Instance.new("Frame", LMG2L["volume_a"]);
LMG2L["bg_b"]["BorderSizePixel"] = 0;
LMG2L["bg_b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["bg_b"]["Size"] = UDim2.new(0.3, 0, 0.76, 0);
LMG2L["bg_b"]["Position"] = UDim2.new(0.35, 0, 0.12, 0);
LMG2L["bg_b"]["Name"] = [[bg]];
LMG2L["bg_b"]["BackgroundTransparency"] = 1;


LMG2L["volbar_c"] = Instance.new("Frame", LMG2L["bg_b"]);
LMG2L["volbar_c"]["BorderSizePixel"] = 0;
LMG2L["volbar_c"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 138);
LMG2L["volbar_c"]["Size"] = UDim2.new(1.33333, 0, 1.02632, 0);
LMG2L["volbar_c"]["Position"] = UDim2.new(-0.16667, 0, -0.02632, 0);
LMG2L["volbar_c"]["Name"] = [[volbar]];


LMG2L["songnum_d"] = Instance.new("TextBox", LMG2L["menu_3"]);
LMG2L["songnum_d"]["Name"] = [[songnum]];
LMG2L["songnum_d"]["BorderSizePixel"] = 0;
LMG2L["songnum_d"]["TextWrapped"] = true;
LMG2L["songnum_d"]["TextSize"] = 16;
LMG2L["songnum_d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["songnum_d"]["TextScaled"] = true;
LMG2L["songnum_d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["songnum_d"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["songnum_d"]["Size"] = UDim2.new(0.10135, 0, 0.3, 0);
LMG2L["songnum_d"]["Position"] = UDim2.new(0.19595, 0, 0.66, 0);
LMG2L["songnum_d"]["Text"] = [[0]];
LMG2L["songnum_d"]["BackgroundTransparency"] = 1;


LMG2L["mode_e"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["mode_e"]["BorderSizePixel"] = 0;
LMG2L["mode_e"]["TextSize"] = 36;
LMG2L["mode_e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["mode_e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["mode_e"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["mode_e"]["BackgroundTransparency"] = 1;
LMG2L["mode_e"]["Size"] = UDim2.new(0.10811, 0, 0.24, 0);
LMG2L["mode_e"]["Text"] = [[R]];
LMG2L["mode_e"]["Name"] = [[mode]];
LMG2L["mode_e"]["Position"] = UDim2.new(0.68243, 0, 0.72, 0);


LMG2L["currentplaylist_f"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["currentplaylist_f"]["TextWrapped"] = true;
LMG2L["currentplaylist_f"]["BorderSizePixel"] = 0;
LMG2L["currentplaylist_f"]["TextSize"] = 25;
LMG2L["currentplaylist_f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["currentplaylist_f"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["currentplaylist_f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["currentplaylist_f"]["BackgroundTransparency"] = 1;
LMG2L["currentplaylist_f"]["Size"] = UDim2.new(0.30405, 0, 0.14, 0);
LMG2L["currentplaylist_f"]["Text"] = [[name]];
LMG2L["currentplaylist_f"]["Name"] = [[currentplaylist]];
LMG2L["currentplaylist_f"]["Position"] = UDim2.new(0.35811, 0, 0.82, 0);


LMG2L["time_10"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["time_10"]["TextWrapped"] = true;
LMG2L["time_10"]["BorderSizePixel"] = 0;
LMG2L["time_10"]["TextSize"] = 12;
LMG2L["time_10"]["TextScaled"] = true;
LMG2L["time_10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["time_10"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["time_10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["time_10"]["BackgroundTransparency"] = 1;
LMG2L["time_10"]["Size"] = UDim2.new(0.25676, 0, 0.28, 0);
LMG2L["time_10"]["Text"] = [[1:00/1:00]];
LMG2L["time_10"]["Name"] = [[time]];
LMG2L["time_10"]["Position"] = UDim2.new(0.02027, 0, 0.08, 0);


LMG2L["title_11"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["title_11"]["TextWrapped"] = true;
LMG2L["title_11"]["TextStrokeTransparency"] = 0.8;
LMG2L["title_11"]["BorderSizePixel"] = 0;
LMG2L["title_11"]["TextSize"] = 12;
LMG2L["title_11"]["TextScaled"] = true;
LMG2L["title_11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["title_11"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["title_11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["title_11"]["BackgroundTransparency"] = 1;
LMG2L["title_11"]["Size"] = UDim2.new(1.18919, 0, 0.3, 0);
LMG2L["title_11"]["Text"] = [[pr3typrincess's music player!]];
LMG2L["title_11"]["Name"] = [[title]];
LMG2L["title_11"]["Position"] = UDim2.new(-0.16892, 0, -0.38, 0);


LMG2L["UIAspectRatioConstraint_12"] = Instance.new("UIAspectRatioConstraint", LMG2L["toggler_2"]);
LMG2L["UIAspectRatioConstraint_12"]["AspectRatio"] = 1;



return LMG2L["ScreenGui_1"], require;
