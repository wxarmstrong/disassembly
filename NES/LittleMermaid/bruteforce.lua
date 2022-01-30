-- * * * PARAMETERS * * *
-- By default, ThisAddress just returns the value of a single address.  However, you can have it return any function of any number of addresses.
local function ThisAddress()
	return memory.readbyte()
end

IWant=ThisAddress
ToBe=''  --{'minimized','maximized','equal to','less than','greater than','at least','at most'}
-- If ToBe in {'minimized','maximized'}...
  AndTheBestIveDoneIs=
  InThisManyFrames=
-- Elseif ToBe in {'equal to','less than','greater than','at least','at most'}
  ThisValue=
  AndTheFastestIveDoneItIs=--   frames

UsingTheseButtons={{}}

-- * * * FUNCTIONS * * *
local function tablecopy(t1)
	local t2={}
	if not(type(t1)=='table') then
		t2=t1
		return t2
	end
	for k,v in pairs(t1) do
		if type(v)=='table' then
			t2[k]=tablecopy(v)
		else
			t2[k]=v
		end
	end
	return t2
end

local function getframeadvancefunction()
	if FCEU or bizstring then
		return emu.frameadvance
	elseif gens then
		return gens.emulateframeinvisible
	else
		print("Unrecognized emulator.")
	end
end

local function jpset(player, buttons)
	if FCEU or gens then
		joypad.set(player, buttons)
	elseif bizstring then	-- BizHawk's joypad.set convention is "backwards".  WTF, BizHawk?
		joypad.set(buttons,player)
	else
		print("Unrecognized emulator.")
	end
end

-- Takes a character code (from a string) and returns true if it corresponds to a numeral.
local function isnumeral(charcode)
	return (charcode>=0x30 and charcode<=0x39)
end

-- Extracts the first number from a string.  For example, running this function on the string "event48blah19" will return 48.
local function getnumber(str)
	local numstart=nil
	local numend=nil
	for i=1,string.len(str) do
		if isnumeral(string.byte(str,i)) then
			if not(numstart) then
				numstart=i
				numend=numstart
				local j=i+1
				while isnumeral(string.byte(str,j)) do
					numend=j
					j=j+1
				end
			end
		end
	end
	if not(numstart) then
		error('No number found!')
	end
	
	local valuetext=string.sub(str,numstart,numend)
	local value = tonumber(valuetext)
	return value
end

-- Parses one of the bounds in an interval, returning the frame value.  You would run this function on, say, "(event2+10," to return index[2]+10+1.
-- It isn't necessary to type "event", "start", or "finish" in full, it just looks for the first match.  Watch out, though, because parsebound('[safe+2,') will return index[2]+2, not 2.
local function parsebound(str,index,maxframes)
	local value=-1
	if string.find(str,'e') then	--Bound defined relative to event.
		value=index[getnumber(str)]
		local plus=string.find(str,'+')
		if plus then
			local plusthis=string.sub(str,plus)
			value=value+getnumber(plusthis)
		end
	elseif string.find(str,'f') then	--Bound defined relative to finish.
		value=maxframes
		local minus=string.find(str,'-')
		if minus then
			local minusthis=string.sub(str,minus)
			value=value+getnumber(minusthis)
		end
	elseif string.find(str,'s') then	--Bound defined relative to start.  Note that because of the elseif statement above, this won't be triggered by "finiSh".
		value=0
		local plus=string.find(str,'+')
		if plus then
			local plusthis=string.sub(str,plus)
			value=value+getnumber(plusthis)
		end
	else	--Bound defined by number.  "+" not allowed!
		value=getnumber(str)
	end
	if string.sub(str,1,1)=='(' then
		value=value+1
	end
	if string.sub(str,-1)==')' then
		value=value-1
	end
	return value
end

-- Parses interval notation into start and finish times.
local function parseinterval(UsingTheseButtons,index,depth,maxframes)
	interval = UsingTheseButtons[depth][4]
	if type(interval)=='number' then	--If interval is just a number, then low and high are both equal to that number.
		low=interval
		high=interval
	elseif string.sub(interval,1,1)=='[' or string.sub(interval,1,1)=='(' then	--The interval is explicitly defined in this case.
		local comma=string.find(interval,',')
		if not comma then
			error('Expected comma to define interval.')
		else
			local lowerbound=string.sub(interval,1,comma)
			local upperbound=string.sub(interval,comma)
			low=parsebound(lowerbound,index,maxframes)
			high=parsebound(upperbound,index,maxframes)
		end
	else	--If no interval is explicitly defined, then the interval is taken to be implicit and both low and high are set equal to the output of parsebound acting on interval in its entirety.
		low=parsebound(interval,index,maxframes)
		high=low
	end

	--This is a little forgiving to the user.  Perhaps their interval was defined improperly, such that the lower bound surpassed the upper bound.
	if high<low then
		high=low
	end
	return low,high
end

-- Compares IWant with Value according to function specified by ToBe
local function check(IWant,ToBe,Value)
	if not(Value) then return nil end
	if ToBe=='minimized' then
		return (IWant()<Value)
	elseif ToBe=='maximized' then
		return (IWant()>Value)
	elseif ToBe=='equal to' then
		return (IWant()==Value)
	elseif ToBe=='less than' then
		return (IWant()<Value)
	elseif ToBe=='greater than' then
		return (IWant()>Value)
	elseif ToBe=='at least' then
		return (IWant()>=Value)
	elseif ToBe=='at most' then
		return (IWant()<=Value)
	else
		error('Invalid string for ToBe.')
	end
end

-- IWant refers only to the current frame, which isn't useful when checking nodes with branches.  Therefore, this function directly compares an old value with a new value, based on ToBe.
local function check2(newvalue,ToBe,oldvalue)
	if not(newvalue) then return nil end
	if ToBe=='minimized' then
		return (newvalue<oldvalue)
	elseif ToBe=='maximized' then
		return (newvalue>oldvalue)
	elseif ToBe=='equal to' then
		return (newvalue==oldvalue)
	elseif ToBe=='less than' then
		return (newvalue<oldvalue)
	elseif ToBe=='greater than' then
		return (newvalue>oldvalue)
	elseif ToBe=='at least' then
		return (newvalue>=oldvalue)
	elseif ToBe=='at most' then
		return (newvalue<=oldvalue)
	else
		error('Invalid string for ToBe.')
	end
end

-- Executes the actual button presses and checks if it is superior to previous attempts.
-- The output of this function depends on the string in ToBe.  If the string is "minimized" or "maximized", it returns the value.  If the string is something else, it returns the number of frames.
-- If it doesn't beat the current record, the output is nil.
local function attempt(presses,IWant,ToBe,Value,maxframes,frameadvance)

	if ToBe=='maximized' or ToBe=='minimized' then
		for frame=0,#presses do
			for player=1,2 do
				--Edited for BizHawk support.  Try to come up with a solution for all emulators.
				jpset(player, presses[frame][player])
			end
			frameadvance()
		end
		if check(IWant,ToBe,Value) then
			return IWant()
		end
	else
		for frame=0,#presses do
			if frame<maxframes then
				if check(IWant,ToBe,Value) then
					return frame
				end
			end
			for player=1,2 do
				jpset(player, presses[frame][player])
			end
			frameadvance()
		end
	end
	return nil
end

-- Uses UsingTheseButtons and index to construct a table of button presses, then passes that table to the attempt function to execute them.
-- presses[frame][player][button].
local function pressbuttons(IWant,ToBe,Value,maxframes,UsingTheseButtons,index,state,frameadvance)
	local presses={}
	for frame=0,maxframes do
		presses[frame]={}
		for player=1,2 do	--Edit the number of players here.
			presses[frame][player]={}
		end
		for i=1,#index do
			if frame>=index[i] then
				local OnOrOff = (UsingTheseButtons[i][3]=='on')	--Set button if "on", reset otherwise.
				presses[frame][UsingTheseButtons[i][1]][UsingTheseButtons[i][2]]=OnOrOff
			end
		end
	end
	output=attempt(presses,IWant,ToBe,Value,maxframes,frameadvance)
	savestate.load(state)
	return presses,output
end

--
local function DepthFirstSearch(IWant,ToBe,Value,maxframes,UsingTheseButtons,index,depth,state,frameadvance)
	depth=depth+1
	local bestpresses,attemptframes,attemptValue,presses
	low,high=parseinterval(UsingTheseButtons,index,depth,maxframes)
	if depth==#UsingTheseButtons then
		for i=low,high do
			--if i>maxframes then return end	--Any input after maxframes is irrelevant and shouldn't be checked.
			index[depth]=i
			if ToBe=='minimized' or ToBe=='maximized' then
				presses,attemptValue=pressbuttons(IWant,ToBe,Value,maxframes,UsingTheseButtons,index,state,frameadvance)
				if attemptValue then
					Value=attemptValue
					bestpresses=tablecopy(presses)
				end
			else
				presses,attemptframes=pressbuttons(IWant,ToBe,Value,maxframes,UsingTheseButtons,index,state,frameadvance)
				if attemptframes then
					maxframes=attemptframes
					bestpresses=tablecopy(presses)
				end
			end
		end
	else
		for i=low,high do
			--if i>maxframes then return end	--Any input after maxframes is irrelevant and shouldn't be checked.
			index[depth]=i
			if ToBe=='minimized' or ToBe=='maximized' then
				presses,attemptValue=DepthFirstSearch(IWant,ToBe,Value,maxframes,UsingTheseButtons,index,depth,state,frameadvance)
				if check2(attemptValue,ToBe,Value) then
					Value=attemptValue
					bestpresses=tablecopy(presses)
				end
			else
				presses,attemptframes=DepthFirstSearch(IWant,ToBe,Value,maxframes,UsingTheseButtons,index,depth,state,frameadvance)
				if attemptframes<maxframes then
					maxframes=attemptframes
					bestpresses=tablecopy(presses)
				end
			end
		end
	end
	if ToBe=='minimized' or ToBe=='maximized' then
		return bestpresses,Value
	else
		return bestpresses,maxframes
	end
end

-- * * * BASE CODE * * *
if ToBe == 'minimized' or ToBe == 'maximized' then
	Value=AndTheBestIveDoneIs
	maxframes=InThisManyFrames
else
	Value=ThisValue
	maxframes=AndTheFastestIveDoneItIs
end
frameadvance=getframeadvancefunction()
depth=0
index={}
if bizstring then
	state1="state1"
else
	state1=savestate.create()
end
savestate.save(state1)
presses,best=DepthFirstSearch(IWant,ToBe,Value,maxframes,UsingTheseButtons,index,depth,state1,frameadvance)
if presses then
	for frame=0,#presses do
		print('Frame: '..frame)
		for player=1,2 do
			print('Player ' .. player .. ' buttons: ',presses[frame][player])
			jpset(player, presses[frame][player])
		end
		frameadvance()
	end
	if ToBe=='minimized' or ToBe=='maximized' then
		print('Best value: ' .. best)
	else
		print('Fewest frames: ' .. best)
	end
else
	print('No improvement found!')
end
if FCEU or gens then
	emu.pause()
elseif bizstring then
	client.pause()
end

--This function works.  It will serve as a template for the final function.
--[=[
local function DFS(G,index,depth)
	depth=depth+1
	if G[depth][1] == 'abs' then
		low=G[depth][2]
		high=G[depth][3]
	elseif G[depth][1] == 'rel' then
		low=index[G[depth][2]] + G[depth][3]
		high=index[G[depth][2]] + G[depth][4]
	end
	if depth==#G then
		for i=low,high do
			index[depth]=i
			for j=1,#index do
				print(index[j])
			end
			print('Next!')
		end
	else
		for i=low,high do
			index[depth]=i
			DFS(G,index,depth)
		end
	end
end

G={{'abs',0,5},{'rel',1,6,16},{'rel',2,8,20}}
--G={{'abs',0,1},{'rel',1,10,11},{'rel',2,100,101}}
depth=0
index={}
DFS(G,index,depth)
]=]--

--[[
{{,,'[start,start+20]'},
 {,,'[event1,event1+5]'},
 {,,'[event2+10,event2+20]'}}
for i=0,20 do
	for j=i,i+5 do
		for k=j+10,j+20 do
		
		end
	end
end

index={}
function makeloops(events,index,depth)
	if depth==#events then
		for 
	else
		depth=depth+1
	end
end

Wikipedia pseudocode:
procedure DFS(G,v):
	label v as discovered
	for all edges from v to w in G.adjacentEdges(v) do
		if vertex w is not labeled as discovered then
			recursively call DFS(G,w)
]]--

--[[
UsingTheseButtons has elements with the structure
{player,button,'on'/'off',timing}
where timing is a string based solely on PREVIOUS events in the UsingTheseButtons vector as well as the start frame (0) and end frame (InThisManyFrames/AndTheFastestIveDoneItIs).  Examples of timing:
'[start,finish]'		-- Test all frames.
'[start,37]'			-- Test all frames from start to frame 37, inclusive.
'(start,37)'			-- Test all frames from start to frame 37, exclusive.
'[15,37]'				-- Any frame from 15 to 37, inclusive.
'[event 2,finish]'		-- Any frame after event 2 has begun, where event 2 is the second element of the UsingTheseButtons vector.  This can be used to force, for example, shooting only after jumping.
'[event 2+37,finish]'	-- No, that doesn't mean event 39.  It means wait at least 37 frames after event 2 has finished.
('[event 2-37,finish]')	-- I'm not sure I want to program this, since each event's timing is supposed to depend on PRIOR events.  It should always be possible to put them in order.

In total, the UsingTheseButtons table might look like this:
UsingTheseButtons={{1,'A','on','[start,finish]'},
				   {1,'A','off','(event 1, finish]'},
				   {1,'right','on','[37,60]'},
				   {1,'up','on','[event 3+2,event 3+2]'},
				   {1,'right','off','[40,finish]'}
				   }
				   
which means try pressing A on any frame, hold it for any interval (release A any time AFTER pressing it), hold right beginning sometime between frames 37 and 60, 
hold up beginning exactly 2 frames after holding right, and release right sometime between frame 40 and the end of input.  Up will be held until the end of input.

Later events override conflicting earlier events.  Generally, it's a good idea to define the timing of 'off' commands with respect to their earlier 'on' counterparts.
]]--