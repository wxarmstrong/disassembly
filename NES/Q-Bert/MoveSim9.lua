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

	game.BestTurns = maxTurns
	game.BestActionList = {}
	
	InitState = game.Init
	InitState.Save = savestate.create()
	InitState.ActionList = {}
	
	savestate.save(InitState.Save)
	savestate.persist(InitState.Save)
	TurnArray = {}
	TurnArray[0] = InitState
	
	SimTurn(game, TurnArray[0])
	
	emu.print("Simulation over")
	savestate.load(TurnArray[0].Save)
	if (#game.BestActionList>0) then 
		emu.print("Solution found in " .. game.BestTurns .. " turns:")
		emu.print(game.BestActionList)
		else emu.print("No path found")
	end	
	
	emu.speedmode("normal")	
	emu.pause()
end

function SimTurn(game, turn)
	CurTurn = turn
	local turnNum = #turn.ActionList
	--emu.print("Now simulating turn #" .. turnNum)
	emu.print(CurTurn.Presses)
	while not game.Condition.Ready() and not game.Condition.Lose() and not game.Condition.Win() do
		emu.frameadvance()
	end
	
	if (game.Condition.Lose()) then return end
	
	if (game.Condition.Win()) then 
		emu.print("Solution found! (" .. #turn.ActionList .. " moves)")
		emu.print(turn.ActionList)
		game.BestTurns = #turn.ActionList
		game.BestActionList = deepcopy(CurTurn.ActionList)
		return
	end
	
	game.Condition.Update()
	
	TurnArray[turnNum] = turn
	turn.Save = savestate.create()
	savestate.save(turn.Save)
	savestate.persist(turn.Save)
	
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
		if turnNum+game.Condition.MinTurns() >= game.BestTurns - 1 then return end
		
		local nextTurn = deepcopy(turn)
		nextTurn.ActionList[#nextTurn.ActionList+1] = actionNames[key]
		CurTurn = nextTurn
		value.Execute()
		SimTurn(game, nextTurn)
		savestate.load(TurnArray[turnNum].Save)
		CurTurn = turn
	end
	
end

QBertConditions = {
	Ready = function () return memory.readbyte(0x53) == 0 end,
	Win = function ()
		return CurTurn.Tiles==0;
	end,
	Lose = function () 
		return memory.readbyte(0x53) == 0x0b or memory.readbyte(0x79) > 0x20
	end,
	Update = function ()
		
		Board = {
			{0x04, 0x0C, 0x15, 0x1D, 0x26, 0x2E, 0x37},
			{0x0B, 0x14, 0x1C, 0x25, 0x2D, 0x36},
			{0x13, 0x1B, 0x24, 0x2C, 0x35},
			{0x1A, 0x23, 0x2B, 0x34},
			{0x22, 0x2A, 0x33},
			{0x29, 0x32},
			{0x31}
		}
		
		Islands = deepcopy(Board)
		
		CurTurn.Tiles = 0
		for i = 1, #Board, 1 do
			row = Board[i]
			for j = 1, #row, 1 do
				Board[i][j] = memory.readbyte(0x700+Board[i][j])%0x10
				if (Board[i][j]>0) then 
					CurTurn.Tiles = CurTurn.Tiles + 1
					Islands[i][j] = 1
				else Islands[i][j] = 0
				end
			end
		end
		
		function isSafe(M, row, col, visited)
			return (row>=1) and (row <= #M) and (col >= 1) and (col <= #(M[row])) and (M[row][col]>0) and (visited[row][col]==false)
		end
		
		function DFS(M, row, col, visited)
			rowNbr = {-1, 0, 0, 1}
			colNbr = {0, -1, 1, 0}
			visited[row][col] = true
			for k = 1, 4, 1 do
				if (isSafe(M, row+rowNbr[k], col + colNbr[k], visited)) then
					DFS(M, row+rowNbr[k], col + colNbr[k], visited)
				end
			end
		end
		
		function countIslands(M)
			visited = {
				{false,false,false,false,false,false,false},
				{false,false,false,false,false,false},
				{false,false,false,false,false},
				{false,false,false,false},
				{false,false,false},
				{false,false},
				{false}
			}
			count = 0
			for i = 1, #M, 1 do
				for j = 1, #(M[i]), 1 do
					if (M[i][j]>0 and visited[i][j]==false) then
						DFS(M, i, j, visited)
						count = count + 1
					end
				end
			end
			return count
		end
		
		numIslands = countIslands(Islands)
		
		CurTurn.Board = deepcopy(Board)
		CurTurn.TilePos = memory.readbyte(0x61)
		CurTurn.NumIslands = numIslands
		--emu.print("Number of islands: " .. CurTurn.NumIslands)
		
		
	end,
	MinTurns = function()
		places = {              0x04,
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
		bestLeftTouches = -999;
		farRight = -999;
		bestRight = {};
		bestRightTouches = -999;
		
		for i=1,#places,1 do
			curTile = places[i]
			touchesLeft = memory.readbyte(0x700+curTile)%0x10
			if (touchesLeft>0) then 
				sum = sum + touchesLeft
				
				if coords[curTile][2]-coords[curTile][1] > farLeft then
					farLeft = coords[curTile][2]-coords[curTile][1]
					bestLeft = curTile
					bestLeftTouches = touchesLeft
				end 
				if coords[curTile][1]-coords[curTile][2] > farRight then
					farRight = coords[curTile][1] - coords[curTile][2]
					bestRight = curTile
					bestRightTouches = touchesLeft
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
			if bestLeftTouches >= 2 then furthest = furthest + (bestLeftTouches-1) end
			if bestRightTouches >= 2 then furthest = furthest + (bestRightTouches-1) end
		end
		

		
		
		if sum > furthest then return sum end
		return furthest
	end
}

QBertActions = {
	Down = {
		Priority = function()

			if CurTurn.Presses.D >= 16 then return 0 end
			
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
			if (CurTurn.Backtracks+CurTurn.NumIslands >= 8 or CurTurn.justBacktracked) then return 0 end

			return 1
		end,
		Execute = function()
			priority = QBertActions.Down.Priority()
--			emu.print("Priority: " .. priority)
			if priority==1 then 
				CurTurn.justBacktracked = true
				CurTurn.Backtracks = CurTurn.Backtracks + 1
			else CurTurn.justBacktracked = false
			end
			push(PadDown)
			CurTurn.Presses.D = CurTurn.Presses.D + 1
		end		
	},
	Left = {
		Priority = function()
		
			if CurTurn.Presses.L >= 16 then return 0 end
		
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
			if (CurTurn.Backtracks+CurTurn.NumIslands >= 8 or CurTurn.justBacktracked) then return 0 end

			return 1
		end,
		Execute = function() 
			priority = QBertActions.Left.Priority()
	--		emu.print("Priority: " .. priority)
			if priority==1 then 
				CurTurn.justBacktracked = true
				CurTurn.Backtracks = CurTurn.Backtracks + 1
			else CurTurn.justBacktracked = false
			end
			push(PadLeft) 
			CurTurn.Presses.L = CurTurn.Presses.L + 1
		end		
	},
	Up = {
		Priority = function()
		
			if CurTurn.Presses.U >= 16 then return 0 end
			
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
			if (CurTurn.Backtracks+CurTurn.NumIslands >= 8 or CurTurn.justBacktracked) then return 0 end
			
			return 1
		end,
		Execute = function() 
			priority = QBertActions.Up.Priority()
--			emu.print("Priority: " .. priority)
			if priority==1 then 
				CurTurn.justBacktracked = true
				CurTurn.Backtracks = CurTurn.Backtracks + 1
			else CurTurn.justBacktracked = false
			end
			push(PadUp)
			CurTurn.Presses.U = CurTurn.Presses.U + 1
		end		
	},
	Right = {
		Priority = function()
		
			if CurTurn.Presses.R >= 16 then return 0 end
			
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
			if (CurTurn.Backtracks+CurTurn.NumIslands >= 8 or CurTurn.justBacktracked) then return 0 end

			return 1
		end,
		Execute = function() 
			priority = QBertActions.Right.Priority()
--			emu.print("Priority: " .. priority)
			if priority==1 then 
				CurTurn.justBacktracked = true
				CurTurn.Backtracks = CurTurn.Backtracks + 1
			else CurTurn.justBacktracked = false
			end
			push(PadRight)
			CurTurn.Presses.R = CurTurn.Presses.R + 1
		end	
	}
}
QBert = {Condition = QBertConditions, ActionList = QBertActions, 
	Init = {
		Backtracks = 0,
		justBacktracked = false,
		NumIslands = 0,
		Tiles = 28,
		Presses = {
			U = 0,
			D = 0,
			L = 0,
			R = 0
		}
	} 
}

MoveSim(QBert,66)