local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GunEvent = ReplicatedStorage:WaitForChild("GunEvent")

GunEvent.OnServerEvent:Connect(function(player)
	local character = player.Character
	local rootPart = character:WaitForChild("HumanoidRootPart")

	local bullet = Instance.new("Part")
	bullet.Size = Vector3.new(0.2, 0.2, 0.2)
	bullet.Anchored = true
	bullet.Parent = workspace
	bullet.Color = Color3.fromRGB(244, 232, 16)

	local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear)
	local tween = game:GetService("TweenService"):Create(bullet, tweenInfo, {
		Position = player.Character.Head.Position + (player.Character.Head.CFrame.LookVector * 100),
	})
	tween:Play()
	bullet:Destroy(wait(1))
end)
