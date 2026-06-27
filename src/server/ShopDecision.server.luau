local Coins = 20
local Price = 15
local Levelrequired = 5
local PlayerLevel = 6
local OwnsItem = false

local function Decision()
	if PlayerLevel <= Levelrequired then
		print("You need to be at least level " .. Levelrequired .. " to purchase this item.")
		return
	elseif OwnsItem then
		print("You already own this item.")
		return
	elseif Coins < Price then
		print("You do not have enough coins to purchase this item.")
		return
	else
		Coins = Coins - Price
		OwnsItem = true
		print("Purchase successful! You now own the item.")
	end
end

Decision()
