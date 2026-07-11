local CoinPart = game.Workspace:WaitForChild("Coin")
local rewardamount = 10
local AlreadyClaimed = {}

local function getPlayerFromHit(hit)
	local character = hit.Parent
	if character == nil then
		return nil
	end
	local humanoid = character:FindFirstChild("Humanoid")
	if humanoid == nil then
		return nil
	end
	local Player = game.Players:GetPlayerFromCharacter(character)
	return Player
end

local function rewardPlayer(player)
	if AlreadyClaimed[player] then
		return
	end
	AlreadyClaimed[player] = true
	print(player.Name .. " has claimed the coin and received " .. rewardamount .. " coins!")
end

CoinPart.Touched:Connect(function(hit)
	local player = getPlayerFromHit(hit)
	if player == nil then
		return
	end
	rewardPlayer(player)
end)
