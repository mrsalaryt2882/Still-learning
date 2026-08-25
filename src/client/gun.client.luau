local tool = script.Parent
local GunEvent = game.ReplicatedStorage:WaitForChild("GunEvent")

tool.Activated:Connect(function()
	GunEvent:FireServer()
end)
