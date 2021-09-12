PadUp  = {
{up=true},
{up=false}
}

PadDown  = {
{down=true},
{down=false}
}

PadLeft  = {
{left=true},
{left=false}
}

PadRight  = {
{right=true},
{right=false}
}

function waitFrames(num)
	for i=1,num,1 do
	emu.frameadvance()
	end
end 

function push(button)
	joypad.set(1,button[1])
	waitFrames(1)
	joypad.set(1,button[2])
end

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end


function MoveSim()
	emu.speedmode("turbo")
	
	save_array = {}
	bestTurns = 65
	bestActionList = {}
	blankActionList = {}
	
	save_array[0] = savestate.create()
	savestate.save(save_array[0])
	savestate.persist(save_array[0])					
	
	SimTurn(blankActionList)	
	
	savestate.load(save_array[0])
	
	emu.print("Simulation over")
	if (#bestActionList>0) then emu.print(bestActionList)
		else emu.print("No path found")
	end
--	emu.print(save_array)
	emu.speedmode("normal")
end

function readyCondition()
	if memory.readbyte(0x53) == 0 then return true end
	return false
end

function winCondition()
	if memory.readbyte(0x23) > 0 then return true end
	return false
end

function loseCondition()
	if memory.readbyte(0x53)==0x0B or memory.readbyte(0x79) > 0x20 then return true end
	return false
end

ActionTypes = {PadUp, PadLeft, PadRight, PadDown}
ActionNames = {"Up", "Left", "Right", "Down"}

function shuffle(tbl)
  for i = #tbl, 2, -1 do
    local j = math.random(i)
    tbl[i], tbl[j] = tbl[j], tbl[i]
  end
  return tbl
end

function SimTurn(ActionList)
	-- Wait until either you are ready to move or until win/lose

	local turnNum = #ActionList + 1
	local curAction = {}
	local newActionList = {}
	local thisActionList = {1,2,3,4}
	
	thisActionList = shuffle(thisActionList)
	
	local stink = savestate.create()
	savestate.save(stink)
	savestate.persist(stink)
	while not readyCondition() and not winCondition() and not loseCondition() do
		savestate.save(stink)
		emu.frameadvance()
	end 
	savestate.load(stink)
	
	local tilePos = memory.readbyte(0x61)

	
--  	emu.print("Now simulating turn #" .. turnNum)
--	emu.print(ActionList)
	
	save_array[turnNum] = savestate.create()
	savestate.save(save_array[turnNum])
	savestate.persist(save_array[turnNum])

	if (loseCondition()) then     -- Lose condition
	--	emu.print("Lose condition hit")
	--	emu.print("Stepping back...")
		savestate.load(save_array[turnNum-1])
		return
	end
	
	if (winCondition()) then          -- Win condition
		emu.print("Solution found!")
		if #ActionList < bestTurns then
			emu.print("New best solution found! (" .. #ActionList .. " moves)")
			emu.print(ActionList)
			bestActionList = deepcopy(ActionList)
			bestTurns = #ActionList
		end
	--	emu.print("Stepping back...")
		savestate.load(save_array[turnNum-1])
		return 
	end



	for actionKey,actionNum in ipairs(thisActionList) do
		
		if #ActionList > bestTurns-2 then
	--		emu.print("Can't be better than current best. Pruning...")
			savestate.load(save_array[turnNum-1])
			return
		end		
		
		curAction = ActionNames[actionNum]
	--	emu.print(curAction)
		fail = false
		
		if (curAction=="Down" or curAction=="Right") and (tilePos>=0x31) then
		--	emu.print("Can't move that direction")
			fail = true
	--	elseif curAction=="Left" and (tilePos==0x04 or tilePos==0x0B or tilePos==0x13 or tilePos==0x1A or tilePos==0x28 or tilePos==0x31) then
	--		emu.print("Can't move that direction")
	--		fail = true
	--	elseif curAction=="Up" and (tilePos==0x04 or tilePos==0x0C or tilePos==0x15 or tilePos==0x1D or tilePos==0x2E or tilePos==0x37) then
	----		emu.print("Can't move that direction")
	--		fail = true
		end
		
		if not fail then
		--	emu.print("Jumping...")
			newActionList = deepcopy(ActionList)
			newActionList[#newActionList+1] = curAction
			push(ActionTypes[actionNum])
			SimTurn(newActionList)
		end
	end
	
	savestate.load(save_array[turnNum-1])
--	emu.print("Done trying moves for this turn.")
--	emu.print("Rolling back to turn " .. turnNum-1)
	
end

math.randomseed(os.clock()*100000000000)
for i=1,1 do
    math.random(10000, 65000)
end
MoveSim()