local Distance = 50
local Checkpointnumber = 4
local AlreadyClaimed = false

local function CheckpointrewardChecker()
	if AlreadyClaimed then
		return
	elseif Checkpointnumber == 4 and Distance >= 50 then
		AlreadyClaimed = true
		print("Checkpoint reward claimed!")
		return
	else
		print("Checkpoint reward not claimed. Conditions not met.")
		return
	end
end

CheckpointrewardChecker()
