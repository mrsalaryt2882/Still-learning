local Players = game:GetService("Players")
local DamagePart = game.Workspace:WaitForChild("DamagePart")
local Debounce = {}

local function GetPlayerFromHit(hit)
	local character = hit.Parent
	if character == nil then
		return nil
	end
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid == nil then
		return nil
	end
	return Players:GetPlayerFromCharacter(character)
end

DamagePart.Touched:Connect(function(hit)
	local player = GetPlayerFromHit(hit)
	if player == nil then
		return
	end

	if Debounce[player] then
		return
	end

	Debounce[player] = true
	print(player.Name .. " touched the damage part!")

	-- Reset debounce after 2 seconds
	task.delay(2, function()
		Debounce[player] = nil
	end)
end)
