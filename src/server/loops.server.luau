local Tempstats = {
	{ Name = "Alex", Finished = true },
	{ Name = "Sam", Finished = false },
	{ Name = "Jordan", Finished = true },
	{ Name = "Taylor", Finished = false },
	{ Name = "Casey", Finished = true },
}

for _, player in ipairs(Tempstats) do
	if player.Finished then
		continue
	end
	print(player.Name .. " has not finished the race.")
end
