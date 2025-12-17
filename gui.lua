local LMG2L = {};

LMG2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


LMG2L["toggler_2"] = Instance.new("ImageButton", LMG2L["ScreenGui_1"]);
LMG2L["toggler_2"]["BorderSizePixel"] = 4;
LMG2L["toggler_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["toggler_2"]["Size"] = UDim2.new(0.03788, 0, 0.08826, 0);
LMG2L["toggler_2"]["BorderColor3"] = Color3.fromRGB(255, 0, 138);
LMG2L["toggler_2"]["Name"] = [[toggler]];
LMG2L["toggler_2"]["Position"] = UDim2.new(0.94866, 0, 0.35304, 0);


LMG2L["menu_3"] = Instance.new("Frame", LMG2L["toggler_2"]);
LMG2L["menu_3"]["BorderSizePixel"] = 4;
LMG2L["menu_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["menu_3"]["Size"] = UDim2.new(6.72727, 0, 3.13636, 0);
LMG2L["menu_3"]["Position"] = UDim2.new(-7, 0, -0.54545, 0);
LMG2L["menu_3"]["BorderColor3"] = Color3.fromRGB(255, 0, 138);
LMG2L["menu_3"]["Name"] = [[menu]];


LMG2L["rev_4"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["rev_4"]["BorderSizePixel"] = 0;
LMG2L["rev_4"]["TextSize"] = 36;
LMG2L["rev_4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["rev_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["rev_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["rev_4"]["BackgroundTransparency"] = 1;
LMG2L["rev_4"]["Size"] = UDim2.new(0.08784, 0, 0.15942, 0);
LMG2L["rev_4"]["Text"] = [[/]];
LMG2L["rev_4"]["Name"] = [[rev]];
LMG2L["rev_4"]["Position"] = UDim2.new(0.7973, 0, 0.81159, 0);


LMG2L["time_5"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["time_5"]["TextWrapped"] = true;
LMG2L["time_5"]["BorderSizePixel"] = 0;
LMG2L["time_5"]["TextSize"] = 12;
LMG2L["time_5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
LMG2L["time_5"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["time_5"]["TextScaled"] = true;
LMG2L["time_5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["time_5"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["time_5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["time_5"]["BackgroundTransparency"] = 1;
LMG2L["time_5"]["Size"] = UDim2.new(0.34459, 0, 0.17391, 0);
LMG2L["time_5"]["Text"] = [[1:00/1:00]];
LMG2L["time_5"]["Name"] = [[time]];
LMG2L["time_5"]["Position"] = UDim2.new(0.02027, 0, 0.05797, 0);


LMG2L["volume_6"] = Instance.new("Frame", LMG2L["menu_3"]);
LMG2L["volume_6"]["BorderSizePixel"] = 4;
LMG2L["volume_6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["volume_6"]["Size"] = UDim2.new(0.13514, 0, 1, 0);
LMG2L["volume_6"]["Position"] = UDim2.new(-0.16892, 0, 0, 0);
LMG2L["volume_6"]["BorderColor3"] = Color3.fromRGB(255, 0, 138);
LMG2L["volume_6"]["Name"] = [[volume]];


LMG2L["bg_7"] = Instance.new("Frame", LMG2L["volume_6"]);
LMG2L["bg_7"]["BorderSizePixel"] = 0;
LMG2L["bg_7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["bg_7"]["Size"] = UDim2.new(0.3, 0, 0.81159, 0);
LMG2L["bg_7"]["Position"] = UDim2.new(0.35, 0, 0.08696, 0);
LMG2L["bg_7"]["Name"] = [[bg]];
LMG2L["bg_7"]["BackgroundTransparency"] = 1;


LMG2L["volbar_8"] = Instance.new("Frame", LMG2L["bg_7"]);
LMG2L["volbar_8"]["BorderSizePixel"] = 0;
LMG2L["volbar_8"]["BackgroundColor3"] = Color3.fromRGB(255, 0, 138);
LMG2L["volbar_8"]["Size"] = UDim2.new(1.33333, 0, 1.01786, 0);
LMG2L["volbar_8"]["Position"] = UDim2.new(-0.16667, 0, 0, 0);
LMG2L["volbar_8"]["Name"] = [[volbar]];


LMG2L["mode_9"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["mode_9"]["BorderSizePixel"] = 0;
LMG2L["mode_9"]["TextSize"] = 36;
LMG2L["mode_9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["mode_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["mode_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["mode_9"]["BackgroundTransparency"] = 1;
LMG2L["mode_9"]["Size"] = UDim2.new(0.10811, 0, 0.23188, 0);
LMG2L["mode_9"]["Text"] = [[R]];
LMG2L["mode_9"]["Name"] = [[mode]];
LMG2L["mode_9"]["Position"] = UDim2.new(0.68243, 0, 0.76812, 0);


LMG2L["songnum_a"] = Instance.new("TextBox", LMG2L["menu_3"]);
LMG2L["songnum_a"]["Name"] = [[songnum]];
LMG2L["songnum_a"]["BorderSizePixel"] = 0;
LMG2L["songnum_a"]["TextWrapped"] = true;
LMG2L["songnum_a"]["TextSize"] = 16;
LMG2L["songnum_a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["songnum_a"]["TextScaled"] = true;
LMG2L["songnum_a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["songnum_a"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["songnum_a"]["Size"] = UDim2.new(0.10135, 0, 0.23188, 0);
LMG2L["songnum_a"]["Position"] = UDim2.new(0.19595, 0, 0.76812, 0);
LMG2L["songnum_a"]["Text"] = [[0]];
LMG2L["songnum_a"]["BackgroundTransparency"] = 1;


LMG2L["counter_b"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["counter_b"]["TextWrapped"] = true;
LMG2L["counter_b"]["BorderSizePixel"] = 0;
LMG2L["counter_b"]["TextSize"] = 12;
LMG2L["counter_b"]["TextXAlignment"] = Enum.TextXAlignment.Right;
LMG2L["counter_b"]["TextScaled"] = true;
LMG2L["counter_b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["counter_b"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["counter_b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["counter_b"]["BackgroundTransparency"] = 1;
LMG2L["counter_b"]["Size"] = UDim2.new(0.48649, 0, 0.17391, 0);
LMG2L["counter_b"]["Text"] = [[1/3]];
LMG2L["counter_b"]["Name"] = [[counter]];
LMG2L["counter_b"]["Position"] = UDim2.new(0.5, 0, 0.23188, 0);


LMG2L["currentplaylist_c"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["currentplaylist_c"]["TextWrapped"] = true;
LMG2L["currentplaylist_c"]["BorderSizePixel"] = 0;
LMG2L["currentplaylist_c"]["TextSize"] = 25;
LMG2L["currentplaylist_c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["currentplaylist_c"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["currentplaylist_c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["currentplaylist_c"]["BackgroundTransparency"] = 1;
LMG2L["currentplaylist_c"]["Size"] = UDim2.new(0.33108, 0, 0.13043, 0);
LMG2L["currentplaylist_c"]["Text"] = [[name]];
LMG2L["currentplaylist_c"]["Name"] = [[currentplaylist]];
LMG2L["currentplaylist_c"]["Position"] = UDim2.new(0.33108, 0, 0.82609, 0);


LMG2L["play/stop_d"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["play/stop_d"]["BorderSizePixel"] = 0;
LMG2L["play/stop_d"]["TextSize"] = 36;
LMG2L["play/stop_d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["play/stop_d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["play/stop_d"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["play/stop_d"]["BackgroundTransparency"] = 1;
LMG2L["play/stop_d"]["Size"] = UDim2.new(0.08108, 0, 0.2029, 0);
LMG2L["play/stop_d"]["Text"] = [[P]];
LMG2L["play/stop_d"]["Name"] = [[play/stop]];
LMG2L["play/stop_d"]["Position"] = UDim2.new(0.89865, 0, 0.76812, 0);


LMG2L["backsong_e"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["backsong_e"]["BorderSizePixel"] = 0;
LMG2L["backsong_e"]["TextSize"] = 36;
LMG2L["backsong_e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["backsong_e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["backsong_e"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["backsong_e"]["BackgroundTransparency"] = 1;
LMG2L["backsong_e"]["Size"] = UDim2.new(0.07432, 0, 0.18841, 0);
LMG2L["backsong_e"]["Text"] = [[<]];
LMG2L["backsong_e"]["Name"] = [[backsong]];
LMG2L["backsong_e"]["Position"] = UDim2.new(0.02027, 0, 0.78261, 0);


LMG2L["song title_f"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["song title_f"]["TextWrapped"] = true;
LMG2L["song title_f"]["BorderSizePixel"] = 0;
LMG2L["song title_f"]["TextSize"] = 12;
LMG2L["song title_f"]["TextXAlignment"] = Enum.TextXAlignment.Right;
LMG2L["song title_f"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["song title_f"]["TextScaled"] = true;
LMG2L["song title_f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["song title_f"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["song title_f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["song title_f"]["BackgroundTransparency"] = 1;
LMG2L["song title_f"]["Size"] = UDim2.new(0.84459, 0, 0.23188, 0);
LMG2L["song title_f"]["Text"] = [[Name]];
LMG2L["song title_f"]["Name"] = [[song title]];
LMG2L["song title_f"]["Position"] = UDim2.new(0.14189, 0, 0.02899, 0);


LMG2L["title_10"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["title_10"]["TextWrapped"] = true;
LMG2L["title_10"]["TextStrokeTransparency"] = 0.8;
LMG2L["title_10"]["BorderSizePixel"] = 0;
LMG2L["title_10"]["TextSize"] = 12;
LMG2L["title_10"]["TextScaled"] = true;
LMG2L["title_10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["title_10"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["title_10"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["title_10"]["BackgroundTransparency"] = 1;
LMG2L["title_10"]["Size"] = UDim2.new(1.18919, 0, 0.21739, 0);
LMG2L["title_10"]["Text"] = [[pr3typrincess's music player!]];
LMG2L["title_10"]["Name"] = [[title]];
LMG2L["title_10"]["Position"] = UDim2.new(-0.16892, 0, -0.27536, 0);


LMG2L["nextsong_11"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["nextsong_11"]["BorderSizePixel"] = 0;
LMG2L["nextsong_11"]["TextSize"] = 36;
LMG2L["nextsong_11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["nextsong_11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["nextsong_11"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["nextsong_11"]["BackgroundTransparency"] = 1;
LMG2L["nextsong_11"]["Size"] = UDim2.new(0.08108, 0, 0.17391, 0);
LMG2L["nextsong_11"]["Text"] = [[>]];
LMG2L["nextsong_11"]["Name"] = [[nextsong]];
LMG2L["nextsong_11"]["Position"] = UDim2.new(0.10135, 0, 0.7971, 0);


LMG2L["UIAspectRatioConstraint_12"] = Instance.new("UIAspectRatioConstraint", LMG2L["toggler_2"]);
LMG2L["UIAspectRatioConstraint_12"]["AspectRatio"] = 1;



return LMG2L["ScreenGui_1"], require; Color3.fromRGB(255, 255, 255);
LMG2L["title_11"]["BackgroundTransparency"] = 1;
LMG2L["title_11"]["Size"] = UDim2.new(1.18919, 0, 0.3, 0);
LMG2L["title_11"]["Text"] = [[pr3typrincess's music player!]];
LMG2L["title_11"]["Name"] = [[title]];
LMG2L["title_11"]["Position"] = UDim2.new(-0.16892, 0, -0.38, 0);


LMG2L["UIAspectRatioConstraint_12"] = Instance.new("UIAspectRatioConstraint", LMG2L["toggler_2"]);
LMG2L["UIAspectRatioConstraint_12"]["AspectRatio"] = 1;



return LMG2L["ScreenGui_1"], require;
