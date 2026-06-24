local Player = game:GetService("Players")

Player.PlayerAdded:Connect(function(player)
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local Shards = Instance.new("IntValue")
	Shards.Name = "Shards"
	Shards.Value = 0
	Shards.Parent = leaderstats

	local coins = Instance.new("IntValue")
	coins.Name = "Coins"
	coins.Value = 0
	coins.Parent = leaderstats
end)
