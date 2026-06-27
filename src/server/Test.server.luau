local function CalculateDamage(baseDamage, multiplier)
	local result = baseDamage * multiplier
	return result
end

print(CalculateDamage(4, 2))
print(CalculateDamage(4, 3))
print(CalculateDamage(4, 4))

local function printDebugg(...)
	local values = { ... }
	for index, value in ipairs(values) do
		print("Debug: ", index, value)
	end
end

printDebugg("Round", 1, "Started", true)
