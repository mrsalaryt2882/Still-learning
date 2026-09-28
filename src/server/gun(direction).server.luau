local ReplicatedStorage = game:GetService("ReplicatedStorage")
local GunEvent = ReplicatedStorage:WaitForChild("GunEvent")
local bulletSample = Instance.new("Part")
bulletSample.Size = Vector3.new(0.2, 0.2, 0.2)
bulletSample.Color = Color3.fromRGB(244, 232, 16)
local debris = game:GetService("Debris")

GunEvent.OnServerEvent:Connect(function(player)
	local character = player.Character
	local rootPart = character:WaitForChild("HumanoidRootPart")

	local bullet = bulletSample:Clone()
	bullet.Position = rootPart.Position + (rootPart.CFrame.LookVector * 2)
	bullet.Parent = workspace

	local bodyVelocity = Instance.new("BodyVelocity")
	bodyVelocity.Velocity = rootPart.CFrame.LookVector * 100
	bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
	bodyVelocity.Parent = bullet

	debris:AddItem(bullet, 2.5)

	local function onBulletHit(projectile, hit)
		if hit and hit.Parent then
			local humanoid = hit.Parent:FindFirstChildOfClass("Humanoid")
			if humanoid then
				if humanoid.parent == character then
					projectile:Destroy()
					return
				end
				humanoid:TakeDamage(10)
			end
		end
		projectile:Destroy()
	end

	bullet.Touched:Connect(function(hit)
		onBulletHit(bullet, hit)
	end)
end)
