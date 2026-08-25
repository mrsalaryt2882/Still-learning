local ReplicatedStorage = game:GetService("ReplicatedStorage")
-- Tell the type checker this is a ModuleScript to avoid unknown require errors
local Settings = require(ReplicatedStorage:WaitForChild("Settings") :: ModuleScript)

print(Settings.RoundTime)
print(Settings.IntermissionTime)
print(Settings.MinimumPlayers)
