--// Command Handler Script
--// Works in Delta, GitHub-ready, easily customizable

-- == CONFIGURATION == --
local CommandList = {
	{
		Name = "ability",
		Shortcut = "ab",
		Description = "Select abilities for your character.",
		Args = { "Ability1", "Ability2 (optional)" },
		Execute = function(args)
			local ReplicatedStorage = game:GetService("ReplicatedStorage")
			local AbilityEvent = ReplicatedStorage:WaitForChild("Events"):WaitForChild("RemoteEvents"):WaitForChild("AbilitySelection")

			if #args == 0 then
				warn("Usage: /ability [Ability1] [Ability2 (optional)]")
				return
			end

			local packet = { args }
			AbilityEvent:FireServer(unpack(packet))
			print("🔥 Sent abilities:", table.concat(args, ", "))
		end
	},

	{
		Name = "backflip",
		Shortcut = "bflip",
		Description = "Perform a cool backflip.",
		Execute = function()
			local player = game.Players.LocalPlayer
			local char = player.Character
			if not char then return end

			local hrp = char:FindFirstChild("HumanoidRootPart")
			local humanoid = char:FindFirstChildOfClass("Humanoid")
			if not hrp or not humanoid then return end

			local duration = 0.45
			local steps = 120
			local startCFrame = hrp.CFrame
			local forwardVector = startCFrame.LookVector
			local upVector = Vector3.new(0, 1, 0)

			task.spawn(function()
				for i = 1, steps do
					local t = i / steps
					local height = 4 * (t - t ^ 2) * 10
					local nextPos = startCFrame.Position + forwardVector * (35 * t) + upVector * height
					local rotation = startCFrame.Rotation * CFrame.Angles(-math.rad(i * (360 / steps)), 0, 0)
					hrp.CFrame = CFrame.new(nextPos) * rotation
					task.wait(duration / steps)
				end
			end)
		end
	},

	{
		Name = "spin",
		Shortcut = "sp",
		Description = "Spin your character endlessly.",
		Execute = function()
			local char = game.Players.LocalPlayer.Character
			local hrp = char and char:FindFirstChild("HumanoidRootPart")
			if not hrp then return end

			task.spawn(function()
				while task.wait() do
					hrp.CFrame *= CFrame.Angles(0, math.rad(45), 0)
				end
			end)
		end
	},

	{
		Name = "loopspeed",
		Shortcut = "ls",
		Description = "Changes WalkSpeed every 0.02s (bypasses anticheat).",
		Args = { "Speed" },
		Execute = function(args)
			local player = game.Players.LocalPlayer
			local char = player.Character or player.CharacterAdded:Wait()
			local humanoid = char:FindFirstChildOfClass("Humanoid")
			local speed = tonumber(args[1]) or 16

			if humanoid then
				task.spawn(function()
					while task.wait(0.02) do
						humanoid.WalkSpeed = speed
					end
				end)
				print("🚀 LoopSpeed active:", speed)
			end
		end
	}
}

-- == AUTOCOMPLETE HELP BOX == --
local MainGui = game.CoreGui:WaitForChild("MainCommandGui")
local CommandBox = MainGui:WaitForChild("CommandBox")
local HelpLabel = MainGui:WaitForChild("HelpLabel")

local function GetMatchingCommands(text)
	local matches = {}
	for _, cmd in ipairs(CommandList) do
		if string.find(cmd.Name:lower(), text:lower()) or string.find(cmd.Shortcut:lower(), text:lower()) then
			table.insert(matches, "/" .. cmd.Name .. " (/" .. cmd.Shortcut .. ") - " .. cmd.Description)
		end
	end
	return matches
end

CommandBox:GetPropertyChangedSignal("Text"):Connect(function()
	local text = CommandBox.Text
	if text:sub(1, 1) == "/" then
		local matches = GetMatchingCommands(text:sub(2))
		HelpLabel.Text = table.concat(matches, "\n")
	else
		HelpLabel.Text = ""
	end
end)

-- == COMMAND EXECUTION == --
CommandBox.FocusLost:Connect(function(enterPressed)
	if not enterPressed then return end
	local input = CommandBox.Text
	CommandBox.Text = ""

	if input:sub(1, 1) ~= "/" then return end
	local words = string.split(input:sub(2), " ")
	local commandName = table.remove(words, 1):lower()

	for _, cmd in ipairs(CommandList) do
		if cmd.Name:lower() == commandName or cmd.Shortcut:lower() == commandName then
			task.spawn(function()
				cmd.Execute(words)
			end)
			return
		end
	end

	warn("❌ Unknown command:", commandName)
end)
