local LMG2L = {};

LMG2L["pr3tysonggui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
LMG2L["pr3tysonggui_1"]["ClipToDeviceSafeArea"] = false;
LMG2L["pr3tysonggui_1"]["Name"] = [[pr3tysonggui]];
LMG2L["pr3tysonggui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


LMG2L["button_2"] = Instance.new("ImageButton", LMG2L["pr3tysonggui_1"]);
LMG2L["button_2"]["BorderSizePixel"] = 3;
LMG2L["button_2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["button_2"]["Size"] = UDim2.new(0.0396, 0, 0.09227, 0);
LMG2L["button_2"]["BorderColor3"] = Color3.fromRGB(255, 0, 246);
LMG2L["button_2"]["Name"] = [[button]];
LMG2L["button_2"]["Position"] = UDim2.new(0.93833, 0, 0.38915, 0);


LMG2L["menu_3"] = Instance.new("Frame", LMG2L["button_2"]);
LMG2L["menu_3"]["BorderSizePixel"] = 3;
LMG2L["menu_3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["menu_3"]["Size"] = UDim2.new(7.08696, 0, 3.69565, 0);
LMG2L["menu_3"]["Position"] = UDim2.new(-7.43478, 0, -1.13043, 0);
LMG2L["menu_3"]["BorderColor3"] = Color3.fromRGB(255, 0, 246);
LMG2L["menu_3"]["Name"] = [[menu]];


LMG2L["backsong_4"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["backsong_4"]["TextWrapped"] = true;
LMG2L["backsong_4"]["BorderSizePixel"] = 0;
LMG2L["backsong_4"]["TextScaled"] = true;
LMG2L["backsong_4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["backsong_4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["backsong_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["backsong_4"]["BackgroundTransparency"] = 0.9;
LMG2L["backsong_4"]["Size"] = UDim2.new(0.09816, 0, 0.16471, 0);
LMG2L["backsong_4"]["Text"] = [[<]];
LMG2L["backsong_4"]["Name"] = [[backsong]];
LMG2L["backsong_4"]["Position"] = UDim2.new(0.02454, 0, 0.78824, 0);


LMG2L["nextsong_5"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["nextsong_5"]["TextWrapped"] = true;
LMG2L["nextsong_5"]["BorderSizePixel"] = 0;
LMG2L["nextsong_5"]["TextScaled"] = true;
LMG2L["nextsong_5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["nextsong_5"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["nextsong_5"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["nextsong_5"]["BackgroundTransparency"] = 0.9;
LMG2L["nextsong_5"]["Size"] = UDim2.new(0.09816, 0, 0.17647, 0);
LMG2L["nextsong_5"]["Text"] = [[>]];
LMG2L["nextsong_5"]["Name"] = [[nextsong]];
LMG2L["nextsong_5"]["Position"] = UDim2.new(0.1227, 0, 0.78824, 0);


LMG2L["play/pause_6"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["play/pause_6"]["TextWrapped"] = true;
LMG2L["play/pause_6"]["BorderSizePixel"] = 0;
LMG2L["play/pause_6"]["TextScaled"] = true;
LMG2L["play/pause_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["play/pause_6"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["play/pause_6"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["play/pause_6"]["BackgroundTransparency"] = 0.9;
LMG2L["play/pause_6"]["Size"] = UDim2.new(0.09816, 0, 0.22353, 0);
LMG2L["play/pause_6"]["Text"] = [[P]];
LMG2L["play/pause_6"]["Name"] = [[play/pause]];
LMG2L["play/pause_6"]["Position"] = UDim2.new(0.88344, 0, 0.75294, 0);


LMG2L["start_7"] = Instance.new("TextButton", LMG2L["menu_3"]);
LMG2L["start_7"]["TextWrapped"] = true;
LMG2L["start_7"]["BorderSizePixel"] = 0;
LMG2L["start_7"]["TextScaled"] = true;
LMG2L["start_7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["start_7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["start_7"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["start_7"]["BackgroundTransparency"] = 0.9;
LMG2L["start_7"]["Size"] = UDim2.new(0.10429, 0, 0.16471, 0);
LMG2L["start_7"]["Text"] = [[/]];
LMG2L["start_7"]["Name"] = [[start]];
LMG2L["start_7"]["Position"] = UDim2.new(0.77914, 0, 0.78824, 0);


LMG2L["currentsong_8"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["currentsong_8"]["TextWrapped"] = true;
LMG2L["currentsong_8"]["BorderSizePixel"] = 0;
LMG2L["currentsong_8"]["TextXAlignment"] = Enum.TextXAlignment.Right;
LMG2L["currentsong_8"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["currentsong_8"]["TextScaled"] = true;
LMG2L["currentsong_8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["currentsong_8"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["currentsong_8"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["currentsong_8"]["BackgroundTransparency"] = 1;
LMG2L["currentsong_8"]["Size"] = UDim2.new(0.6135, 0, 0.2, 0);
LMG2L["currentsong_8"]["Text"] = [[song name]];
LMG2L["currentsong_8"]["Name"] = [[currentsong]];
LMG2L["currentsong_8"]["Position"] = UDim2.new(0.38037, 0, 0.01176, 0);


LMG2L["songcounter_9"] = Instance.new("TextLabel", LMG2L["menu_3"]);
LMG2L["songcounter_9"]["TextWrapped"] = true;
LMG2L["songcounter_9"]["BorderSizePixel"] = 0;
LMG2L["songcounter_9"]["TextXAlignment"] = Enum.TextXAlignment.Right;
LMG2L["songcounter_9"]["TextYAlignment"] = Enum.TextYAlignment.Top;
LMG2L["songcounter_9"]["TextScaled"] = true;
LMG2L["songcounter_9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["songcounter_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["songcounter_9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["songcounter_9"]["BackgroundTransparency"] = 1;
LMG2L["songcounter_9"]["Size"] = UDim2.new(0.22086, 0, 0.16471, 0);
LMG2L["songcounter_9"]["Text"] = [[1/3]];
LMG2L["songcounter_9"]["Name"] = [[songcounter]];
LMG2L["songcounter_9"]["Position"] = UDim2.new(0.77301, 0, 0.16471, 0);


LMG2L["songnum_a"] = Instance.new("TextBox", LMG2L["menu_3"]);
LMG2L["songnum_a"]["Name"] = [[songnum]];
LMG2L["songnum_a"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["songnum_a"]["BorderSizePixel"] = 0;
LMG2L["songnum_a"]["TextWrapped"] = true;
LMG2L["songnum_a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["songnum_a"]["TextScaled"] = true;
LMG2L["songnum_a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
LMG2L["songnum_a"]["FontFace"] = Font.new([[rbxasset://fonts/families/IndieFlower.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
LMG2L["songnum_a"]["PlaceholderText"] = [[num]];
LMG2L["songnum_a"]["Size"] = UDim2.new(0.09816, 0, 0.25882, 0);
LMG2L["songnum_a"]["Position"] = UDim2.new(0.23926, 0, 0.74118, 0);
LMG2L["songnum_a"]["Text"] = [[0]];
LMG2L["songnum_a"]["BackgroundTransparency"] = 1;


LMG2L["songimg_b"] = Instance.new("ImageButton", LMG2L["menu_3"]);
LMG2L["songimg_b"]["BorderSizePixel"] = 0;
LMG2L["songimg_b"]["BackgroundTransparency"] = 1;
LMG2L["songimg_b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
LMG2L["songimg_b"]["Size"] = UDim2.new(0.3681, 0, 0.70588, 0);
LMG2L["songimg_b"]["Name"] = [[songimg]];
LMG2L["songimg_b"]["Position"] = UDim2.new(0.01227, 0, 0.02353, 0);


LMG2L["UIAspectRatioConstraint_c"] = Instance.new("UIAspectRatioConstraint", LMG2L["button_2"]);


return LMG2L["pr3tysonggui_1"], require;
