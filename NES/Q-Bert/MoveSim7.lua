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

breakFlag = false
curTurn = {}

function MoveSim(game, maxTurns)
	emu.speedmode("turbo")
	
	turn_array = {}
	bestTurns = maxTurns
	
	bestActionList = {}
	
	initialState = {}
	initialState.save = savestate.create()
	savestate.save(initialState.save)
	savestate.persist(initialState.save)
	initialState.backtracks = 0
	initialState.justBacktracked = false
	initialState.actionList = {}
	
	turn_array[0] = initialState
	curTurn = turn_array[0]
	
	SimTurn(game, 1)
	
	emu.print("Simulation over")
	savestate.load(turn_array[0].save)
	if (#bestActionList>0) then emu.print(bestActionList)
		else emu.print("No path found")
	end
	
	emu.speedmode("normal")	
end

recentTurn = 0;

function SimTurn(game, turnNum)
	recentTurn = turnNum
	breakFlag = false
--	emu.print("Now simulating turn #" .. turnNum)
--	emu.print("Backtracks: " .. curTurn.backtracks)
	while not game.Condition.Ready() and not game.Condition.Lose() and not game.Condition.Win() do
		emu.frameadvance()
	end 
--	emu.print(curTurn.backtracks)

	if (game.Condition.Lose()) then 
--		emu.print("lol")
		savestate.load(turn_array[turnNum-1].save) 
		curTurn = turn_array[turnNum-1]
		recentTurn = recentTurn-1
		return
	end
	
	if (game.Condition.Win()) then
		emu.print("Solution found! (" .. turnNum .. " moves)")
		emu.print(curTurn.actionList)
		bestTurns = turnNum
		bestActionList = deepcopy(curturn.actionList)
		savestate.load(turn_array[turnNum-1].save)
		curTurn = turn_array[turnNum-1]
		recentTurn = recentTurn-1
		return
	end

	local curSave = savestate.create()
	savestate.save(curSave)
	savestate.persist(curSave)
	
	newTurn = {}
	newTurn = deepcopy(curTurn)
	newTurn.save = curSave
	turn_array[turnNum] = newTurn
	curTurn = newTurn

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

	for key, value in next, actionQueue do
		
		if turnNum+game.Condition.MinTurns() >= bestTurns-1 then 
			savestate.load(turn_array[turnNum-1].save) 
			curTurn = turn_array[turnNum-1]
			recentTurn = recentTurn-1
			return 
		end

		local newActionList = deepcopy(curTurn.actionList)
		newActionList[#newActionList+1] = actionNames[key]
		local nextTurn = deepcopy(curTurn)
		nextTurn.actionList = newActionList
		nextTurn.actionList[#nextTurn.actionList + 1] = value
		
		local saveTurn = deepcopy(curTurn)
		
		curTurn = deepcopy(nextTurn)
--		emu.print("Backtracks: " .. curTurn.backtracks)
		value.Execute();
--		emu.print("Backtracks: " .. curTurn.backtracks)
		if (breakFlag) then
			breakFlag = false
			savestate.load(turn_array[turnNum].save)
			curTurn = deepcopy(saveTurn)
		else
			SimTurn(game, turnNum+1)
		end
	end
	
	savestate.load(turn_array[turnNum-1].save)
	curTurn = turn_array[turnNum-1]
	recentTurn = recentTurn-1
end

function breakTest()

	reg_A = memory.getregister("a")
	reg_X = memory.getregister("x")
	reg_Y = memory.getregister("y")
	
	--If Q*Bert is changing the tile 
	if reg_X == 0x00 then
		--If backtracking onto an already finished tile
		if memory.readbyte(0x700+reg_Y)%0x10 == 00 then
			--Set fail state if backtracking twice in a row
			if (turn_array[recentTurn-1].justBacktracked) then breakFlag = true return end
			curTurn.backtracks = curTurn.backtracks + 1
			curTurn.justBacktracked = true;
		else
			curTurn.justBacktracked = false;
		end
	--If Sam/Slick is changing the tile
	else
		--Set fail state if they're undoing an already finished tile
		if memory.readbyte(0x700+reg_Y)%0x10 == 00 then breakFlag = true return end
	end

end

--Line of code where tile states get changed
memory.registerexecute(0xBFA2, 0x01, breakTest)

QBertConditions = {
	Ready = function () return memory.readbyte(0x53) == 0 end,
	Win = function () return memory.readbyte(0x23) > 0 end,
	Lose = function () 
	--	emu.print(curTurn)
	--	if memory.readbyte(0x53) == 0x0b then emu.print("a") end
	--	if memory.readbyte(0x79) > 0x20 then emu.print("b") end
	--	if breakFlag == true then emu.print("c") end
	--	if curTurn.backtracks > 8 then emu.print("d") end
		
		return memory.readbyte(0x53) == 0x0b or memory.readbyte(0x79) > 0x20 or breakFlag == true or curTurn.backtracks > 8
	end,
	MinTurns = function()
		places = {0x04,
		          0x0B, 0x0C, 
				  0x13, 0x14, 0x15,
				  0x1A, 0x1B, 0x1C, 0x1D,
				  0x22, 0x23, 0x24, 0x25, 0x26, 
				  0x29, 0x2A, 0x2B, 0x2C, 0x2D, 0x2E,
				  0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37
				  }
		coords = {}
		coords[0x04] = {0,0}
		coords[0x0B] = {0,1}
		coords[0x13] = {0,2}
		coords[0x1A] = {0,3}
		coords[0x22] = {0,4}
		coords[0x29] = {0,5}
		coords[0x31] = {0,6}
		
		coords[0x0C] = {1,0}
		coords[0x14] = {1,1}
		coords[0x1B] = {1,2}
		coords[0x23] = {1,3}
		coords[0x2A] = {1,4}
		coords[0x32] = {1,5}
		
		coords[0x15] = {2,0}
		coords[0x1C] = {2,1}
		coords[0x24] = {2,2}
		coords[0x2B] = {2,3}
		coords[0x33] = {2,4}
		
		coords[0x1D] = {3,0}
		coords[0x25] = {3,1}
		coords[0x2C] = {3,2}
		coords[0x34] = {3,3}
		
		coords[0x26] = {4,0}
		coords[0x2D] = {4,1}
		coords[0x35] = {4,2}
		
		coords[0x2E] = {5,0}
		coords[0x36] = {5,1}
		
		coords[0x37] = {6,0}
		
		tilePos = memory.readbyte(0x61)
		
		sum = 0;
		furthest = 0;
		
		farLeft = -999;
		bestLeft = {};
		farRight = -999;
		bestRight = {};
		
		for i=1,#places,1 do
			curTile = places[i]
			touchesLeft = memory.readbyte(0x700+curTile)%0x10
			if (touchesLeft>0) then 
				sum = sum + touchesLeft
				
				if coords[curTile][2]-coords[curTile][1] > farLeft then
					farLeft = coords[curTile][2]-coords[curTile][1]
					bestLeft = curTile
				end 
				if coords[curTile][1]-coords[curTile][2] > farRight then
					farRight = coords[curTile][1] - coords[curTile][2]
					bestRight = curTile
				end 
			end
		end
		
		if sum > 0 then  
			LeftToRight = math.abs(coords[bestLeft][1]-coords[bestRight][1])+math.abs(coords[bestLeft][2]-coords[bestRight][2])
			DistToLeft = math.abs(coords[bestLeft][1]-coords[tilePos][1])+math.abs(coords[bestLeft][2]-coords[tilePos][2])
			DistToRight = math.abs(coords[bestRight][1]-coords[tilePos][1])+math.abs(coords[bestRight][2]-coords[tilePos][2])
				
			furthest = DistToLeft
			if DistToLeft < DistToRight then furthest = DistToRight end
			furthest = furthest + LeftToRight
		end
		
		if sum > furthest then return sum end
		return furthest
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
			
			if curTurn.justBacktracked or curTurn.backtracks>=4 then return 0 end 
			return 1
		end,
		Execute = function()
			push(PadDown)
		end		
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
			
			if (tileState%0x10 > 0) then 
				return 2 
			end
			
			if curTurn.justBacktracked or curTurn.backtracks>=4 then return 0 end 
			return 1
		end,
		Execute = function() 
			push(PadLeft) 
		end		
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
			
			if (tileState%0x10 > 0) then 
				return 2 
			end
			
			if curTurn.justBacktracked or curTurn.backtracks>=4 then return 0 end 
			return 1
		end,
		Execute = function() 
			push(PadUp)
		end		
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
				if (targetPos==0x37) then 
					return 3 end 
				return 2 
			end
			if curTurn.justBacktracked or curTurn.backtracks>=4 then return 0 end 
			return 1
		end,
		Execute = function() 
			push(PadRight)
		end	
	}
}
QBert = {Condition = QBertConditions, ActionList = QBertActions}

MoveSim(QBert,36)