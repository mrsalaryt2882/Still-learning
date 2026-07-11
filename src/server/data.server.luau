local nothing = nil
local YesOrNo = true
local money = 80
local name = "Alen"
local Angle = CFrame.new(0, 0, 0)
local playerdata = { health = 100, power = 50 }
local worker = function(helper)
	print("Hello " .. helper)
end

print(type(nothing))
print(type(YesOrNo))
print(type(money))
print(type(name))
print(typeof(Angle))
print(type(playerdata))
print(type(worker))
