local killbrick = Instance.new("Part")
killbrick.Size = Vector3.new(4, 1, 4)
killbrick.Position = Vector3.new(4, 5, 4)
killbrick.Color = Color3.fromRGB(255, 0, 0)
killbrick.Anchored = true
killbrick.Parent = workspace
killbrick.Name = "KillBrick"

killbrick.Touched:Connect(function(hit)
	local character = hit.Parent
	local humanoid = character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid.Health = 0
	end
end)
