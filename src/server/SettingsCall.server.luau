local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Settings = require(ReplicatedStorage:WaitForChild("Settings"))

print(Settings.RoundTime)
print(Settings.IntermissionTime)
print(Settings.MinimumPlayers)
