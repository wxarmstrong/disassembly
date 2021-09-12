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

function push(button)
	joypad.set(1,button[1])
	emu.frameadvance()
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

function MoveSim(game, maxTurns)
	emu.speedmode("turbo")
	
	save_array = {}
	bestTurns = maxTurns
	bestActionList = {}
	blankActionList = {}
	
	save_array[0] = savestate.create()
	savestate.save(save_array[0])
	savestate.persist(save_array[0])					
	
	SimTurn(game, 0, 100, blankActionList)	
	
	emu.print("Simulation over")
	savestate.load(save_array[0])
	if (#bestActionList>0) then emu.print(bestActionList)
		else emu.print("No path found")
	end
	
	emu.speedmode("normal")	
end

breakFlag = false

function SimTurn(game, percent, percentSegment, ActionList)
	breakFlag = false
	
	emu.print("Estimate: " .. percent .. "% done with simulation");
	local turnNum = #ActionList + 1

	while not game.Condition.Ready() and not game.Condition.Lose() and not game.Condition.Win() do
		emu.frameadvance()
	end 

	if (game.Condition.Lose()) then savestate.load(save_array[turnNum-1]) return end
	
	if (game.Condition.Win()) then
		emu.print("Solution found! (" .. #ActionList .. " moves)")
		emu.print(ActionList)

		--emu.pause()

		bestActionList = deepcopy(ActionList)
		bestTurns = #ActionList
		-- savestate.load(save_array[turnNum-1])
		return
	end

	save_array[turnNum] = savestate.create()
	savestate.save(save_array[turnNum])
	savestate.persist(save_array[turnNum])

	local actionQueue = {}
	local actionNames = {}
	
	for key, value in next, game.ActionList do
		if value.Priority() == 3 then
			actionNames[#actionNames + 1] = key
			actionQueue[#actionQueue + 1] = value
		end 
	end	
	for key, value in next, game.ActionList do
		if value.Priority() == 2 then
			actionNames[#actionNames + 1] = key
			actionQueue[#actionQueue + 1] = value
		end 
	end
	for key, value in next, game.ActionList do
		if value.Priority() == 1 then
			actionNames[#actionNames + 1] = key
			actionQueue[#actionQueue + 1] = value
		end 
	end

	local curSegment = percentSegment / #actionQueue
	for key, value in next, actionQueue do
		local curPercent = percent + (key-1)*(percentSegment/#actionQueue)
		
		
		if #ActionList+game.Condition.MinTurns() >= bestTurns-1 then savestate.load(save_array[turnNum-1]) return end

		local newActionList = deepcopy(ActionList)
		newActionList[#newActionList+1] = actionNames[key]
		value.Execute();
		if (breakFlag) then
			breakFlag = false
			savestate.load(save_array[turnNum])
		else
			SimTurn(game, curPercent, curSegment, newActionList)
		end
	end

	
	savestate.load(save_array[turnNum-1])
end

function breakTest()
	reg_A = memory.getregister("a")
	reg_X = memory.getregister("x")
	reg_Y = memory.getregister("y")
	
	tileState = reg_A%0x10
	
	if tileState==0x02 then
		breakFlag = true;
	end

end

memory.registerwrite(0x700, 0x38, breakTest)

QBertConditions = {
	Ready = function () return memory.readbyte(0x53) == 0 end,
	Win = function () return memory.readbyte(0x23) > 0 end,
	Lose = function () return memory.readbyte(0x53) == 0x0b or memory.readbyte(0x79) > 0x20 or breakFlag == true end,
	MinTurns = function()
		places = {0x04,
		          0x0B, 0x0C, 
				  0x13, 0x14, 0x15,
				  0x1A, 0x1B, 0x1C, 0x1D,
				  0x22, 0x23, 0x24, 0x25, 0x26, 
				  0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E,
				  0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
				  }

		tilePos = memory.readbyte(0x61)
		
		sum = 0;

		for i=1,#places,1 do
			curTile = places[i]
			touchesLeft = memory.readbyte(0x700+curTile)%0x10
			if (touchesLeft>0) then 
				sum = sum + touchesLeft
			end
		end
		
		return sum
	end
}

QBertActions = {
	Down = {
		Priority = function()

			tilePos = memory.readbyte(0x61)
			--If at bottom of screen
			if (tilePos >= 0x31) then return 0 end
			
			targetPos = tilePos + 7;
			if (tilePos%16)>=0x8 then targetPos = targetPos + 1 end
			tileState = memory.readbyte(0x700+targetPos)
			
			if (tileState%0x10 > 0) then 
				if (targetPos==0x31) then return 3 end 
				return 2 
			end
			
			return 0
		end,
		Execute = function() push(PadDown) end		
	},
	Left = {
		Priority = function()
		
			tilePos = memory.readbyte(0x61)
			--If at top of screen
			if (tilePos==0x04) then return 0 end
			
			--Left side of screen
			if (tilePos==0x0B or tilePos==0x13 or tilePos==0x1A or tilePos==0x22 or tilePos==0x29 or tilePos==0x31) then return 0 end
			
			targetPos = tilePos - 8;
			if (tilePos%16)<0x8 then targetPos = targetPos - 1 end
			tileState = memory.readbyte(0x700+targetPos)
			
			if (tileState%0x10 > 0) then return 2 end
	
			return 0
		end,
		Execute = function() push(PadLeft) end		
	},
	Up = {
		Priority = function()
			tilePos = memory.readbyte(0x61)
			-- if at top of screen
			if (tilePos==0x04) then return 0 end
			
			-- Right side of screen
			if (tilePos==0x0C or tilePos==0x15 or tilePos==0x1D or tilePos==0x26 or tilePos==0x2E or tilePos==0x37) then return 0 end
			
			targetPos = tilePos - 7;
			if (tilePos%16)<0x8 then targetPos = targetPos - 1 end
			tileState = memory.readbyte(0x700+targetPos)
			
			if (tileState%0x10 > 0) then return 2 end
			
			return 0
		end,
		Execute = function() push(PadUp) end		
	},
	Right = {
		Priority = function()
			tilePos = memory.readbyte(0x61)
			--If at bottom of screen
			if (memory.readbyte(0x61) >= 0x31) then return 0 end
			
			targetPos = tilePos + 8;
			if (tilePos%16)>=0x8 then targetPos = targetPos + 1 end
			tileState = memory.readbyte(0x700+targetPos)
			
			if (tileState%0x10 > 0) then 
				if (targetPos==0x37) then return 3 end 
				return 2 
			end
			
			return 0
		end,
		Execute = function() push(PadRight) end	
	}
}
QBert = {Condition = QBertConditions, ActionList = QBertActions}

MoveSim(QBert,35)