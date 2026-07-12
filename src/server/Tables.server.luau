local ItemData = {
	Sword = {
		Price = 100,
		Rarity = "Common",
		Description = "A basic sword for beginners.",
	},
	Bow = {
		Price = 150,
		Rarity = "Uncommon",
		Description = "A bow for ranged attacks.",
	},
	Spear = {
		Price = 200,
		Rarity = "Rare",
		Description = "A spear for long-range melee combat.",
	},
}

for itemName, itemInfo in pairs(ItemData) do
	print(itemName, itemInfo.Price, itemInfo.Rarity, itemInfo.Description)
end
