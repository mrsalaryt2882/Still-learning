local Player = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local Car = Instance.new("Part")
Car.Parent = game.Workspace
Car.Name = "Car"
Car.Size = Vector3.new(4, 2, 6)
Car.Position = Vector3.new(0, 5, 0)
Car.Anchored = true

local Goal = Car.Position + Vector3.new(0, 0, 50)

local Debounce = false

Car.Touched:Connect(function(hit)
	if hit.Parent:FindFirstChild("Humanoid") and not Debounce then
		Debounce = true
		local Players = Player:GetPlayerFromCharacter(hit.Parent)
		if Players then
			local TweenInfo = TweenInfo.new(2, Enum.EasingStyle.Linear)
			local Tween = TweenService:Create(Car, TweenInfo, { Position = Goal })
			Tween:Play()
			Tween.Completed:Wait()
			Car.Position = Vector3.new(0, 5, 0) -- Reset position after reaching goal
		end
		Debounce = false
	end
end)
