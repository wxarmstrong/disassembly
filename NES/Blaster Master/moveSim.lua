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

BMConditions = {
	Ready = function ()
		return true
	end,
	Win = function ()
		return memory.readbyte(0x400)==0x0D
	end,
	Lose = function () 
		frame = emu.framecount()
		pos = memory.readword(0x402)
		if pos==Game.BestPos[frame-2] then return true end
		if Game.BestPos[frame]==nil then return false end
	--	emu.print(Game.BestPos[frame] .. "vs" .. pos)
		return Game.BestPos[frame]>pos
	end,
	Update = function ()
		frame = emu.framecount()
		pos = memory.readword(0x402)	
		if Game.BestPos[frame]==nil or Game.BestPos[frame]<pos then
			Game.BestPos[frame] = pos
	--		emu.print("New best pos for frame#" .. frame .. ": " .. pos)
		end
	end,
	MinTurns = function()
		return 1
	end
}

BMActions = {
	Jump = {
		Priority = function()
			lastAction = CurTurn.ActionList[#CurTurn.ActionList]
			if memory.readbyte(0x40A)==0 or lastAction=="JumpShoot" or lastAction=="Jump" then return 2 end
			return 0
		end,
		Execute = function() 
			joypad.set(1,{right=true,A=true,B=false})
			emu.frameadvance()
			joypad.set(1,{right=false,A=false,B=false})
		end	
	},	
	JumpShoot = {
		Priority = function()
			lastAction = CurTurn.ActionList[#CurTurn.ActionList]
			if lastAction=="JumpShoot" or lastAction=="Shoot" then return 0 end
			if memory.readbyte(0x40A)==0  or lastAction=="Jump" then return 3 end
			return 0
		end,
		Execute = function() 
			joypad.set(1,{right=true,A=true,B=true})
			emu.frameadvance()
			joypad.set(1,{right=false,A=false,B=false})
		end	
	},
	Shoot = {
		Priority = function()
			lastAction = CurTurn.ActionList[#CurTurn.ActionList]
			if lastAction=="JumpShoot" or lastAction=="Shoot" then return 0 end
			return 3
		end,
		Execute = function() 
			joypad.set(1,{right=true,B=true,A=false})
			emu.frameadvance()
			joypad.set(1,{right=false,A=false,B=false})
		end	
	},
	Move = {
		Priority = function()
			return 1
		end,
		Execute = function() 
			joypad.set(1,{right=true,A=false,B=false})
			emu.frameadvance()
			joypad.set(1,{right=false,A=false,B=false})
		end	
	}	
}

BlasterMaster = {Condition = BMConditions, ActionList = BMActions, 
	Init = {},
	GenKey = function()
	
	end,
	BestPos = {}
}

	MoveSim(BlasterMaster, 1000)