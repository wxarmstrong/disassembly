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

DP = {}

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
	Game = game
	CurTurn = turn
	local turnNum = #turn.ActionList
	--emu.print("Now simulating turn #" .. turnNum)
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
		if turnNum >= game.BestTurns - 1 then return end
		
		local nextTurn = deepcopy(turn)
		nextTurn.ActionList[#nextTurn.ActionList+1] = actionNames[key]
		CurTurn = nextTurn
		value.Execute()
		SimTurn(game, nextTurn)
		savestate.load(TurnArray[turnNum].Save)
		CurTurn = turn
	end
	
end

LMConditions = {
	Ready = function ()
		return true
	end,
	Win = function ()
		return memory.readbyte(0x340)>=0x5
	end,
	Lose = function () 
		frame = emu.framecount()
		pos = 256*(256*(memory.readbyte(0x340))+memory.readbyte(0x330))+memory.readbyte(0x320)
		if Game.BestPos[frame]==nil then return false end
		if pos<=Game.BestPos[frame-1] then return true end
	--	emu.print(Game.BestPos[frame] .. "vs" .. pos)
		return Game.BestPos[frame]>pos
	end,
	Update = function ()
		frame = emu.framecount()
		pos = 256*(256*(memory.readbyte(0x340))+memory.readbyte(0x330))+memory.readbyte(0x320)	
		if Game.BestPos[frame]==nil or Game.BestPos[frame]<pos then
			Game.BestPos[frame] = pos
	--		emu.print("New best pos for frame#" .. frame .. ": " .. pos)
		end
	end,
	MinTurns = function()
		return 1
	end
}

LMActions = {
	UpRight = {
		Priority = function()
			return 1
		end,
		Execute = function() 
			joypad.set(1,{B=true,up=true,right=true})
			emu.frameadvance()
			joypad.set(1,{B=false,up=false,right=false})
		end	
	},	
	Right = {
		Priority = function()
			return 2
		end,
		Execute = function() 
			joypad.set(1,{B=true,right=true})
			emu.frameadvance()
			joypad.set(1,{B=false,right=false})
		end	
	},	
	DownRight = {
		Priority = function()
			return 1
		end,
		Execute = function() 
			joypad.set(1,{B=true,down=true,right=true})
			emu.frameadvance()
			joypad.set(1,{B=false,down=false,right=false})
		end	
	}
}


LittleMermaid = {Condition = LMConditions, ActionList = LMActions, 
	Init = {},
	GenKey = function()
	
	end,
	BestPos = {}
}

	MoveSim(LittleMermaid, 2000)