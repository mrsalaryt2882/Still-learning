local TweenService = game:GetService("TweenService")

for i = 1, 3 do
	local part = Instance.new("Part")
	part.Size = Vector3.new(4, 1, 4)
	part.Position = Vector3.new(i * 5, 5, 0)
	part.Anchored = true
	part.Parent = workspace

	local tweenInfo = TweenInfo.new(5)

	local goal = {}
	goal.Position = Vector3.new(i * 5, 10, 0)

	local tween = TweenService:Create(part, tweenInfo, goal)
	tween:Play()
end
