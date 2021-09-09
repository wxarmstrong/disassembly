finished=0

E4=0x88
E5=0x00
E6=0x00
E7=0x00

Fork1={}
Fork2={}
Fork3={}
Fork4={}
Forkframe={}

framecount=0
framesearch=0

maxframes=10
curframes=0

best=0xFF

nametable={"Mid","Left","Right","Mid"}

function starfish()
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
  
  advanceRNG(13)
  
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
  
  advanceRNG(13)
  
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
  
  advanceRNG(13)
  
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
  
  advanceRNG(13)
  
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
end

function advanceRNG(num)
 for i=1,num,1 do
  carry0=0
  if bit.bxor(bit.band(E4,0x02),bit.band(E5,0x02)) ~= 0 then
   carry0=1
  end
  
  for i=1,3,1 do
   _G["carry"..i]=0
   if bit.band(_G["E"..i+3],0x01)==1 then 
    _G["carry"..i]=1
   end 
  end

  for i=0,3,1 do
  _G["NextE"..i+4] = 128*_G["carry"..i]+bit.rshift(_G["E"..i+4],1)
  end

  for i=0,3,1 do
   _G["E"..i+4] = _G["NextE"..i+4] 
  end
  
 end 
 
end

function printRNG(msg)
 for i=0,3,1 do
  _G["PrintE"..i+4] = string.format("%x",_G["E"..i+4])
  if string.len(_G["PrintE"..i+4])==1 then
   _G["PrintE"..i+4] = "0".._G["PrintE"..i+4]
  end 
 end
 emu.print(msg..PrintE4.." "..PrintE5.." "..PrintE6.." "..PrintE7)
end

function savefork()
 table.insert(Fork1,E4) 
 table.insert(Fork2,E5)
 table.insert(Fork3,E6)
 table.insert(Fork4,E7)
end

function loadfork()
 E4=Fork1[#Fork1]
 E5=Fork2[#Fork2]
 E6=Fork3[#Fork3]
 E7=Fork4[#Fork4]
end

function returnfork()
 E4=table.remove(Fork1)
 E5=table.remove(Fork2)
 E6=table.remove(Fork3)
 E7=table.remove(Fork4)
end

function tablesum(table)
 sum=0
 for i=1,#table,1 do
  sum=sum+table[i]
 end
 return sum 
end

function Stage2()
 advanceRNG(2080)
 savefork()
 for i=0,maxframes-tablesum(Forkframe),1 do
  loadfork()
  advanceRNG(i)
  printRNG("   Eel screen scroll ("..i.." frame(s) delay): ")
  
  advanceRNG(112)
  E5=bit.band(E4+E5,0xFF)
  Crab1pos=bit.band(E5,0x03)
  
  advanceRNG(64)
  E5=bit.band(E4+E5,0xFF)
  Crab2pos=bit.band(E5,0x03)
  
  if Crab1pos==Crab2pos then
   Crab2pos=bit.band(Crab2pos+0x02,0x03)
  end
  
  Crab1pos=nametable[Crab1pos+1]
  Crab2pos=nametable[Crab2pos+1]
  
  advanceRNG(105)
  
  Crab2timer=bit.band(E4+E5,0x01)
  
  if Crab1pos=="Mid" and Crab2pos=="Left" and Crab2timer==0 then
   table.insert(Forkframe,i)
   
   advanceRNG(63)
   savefork()
   
    for i=0,maxframes-tablesum(Forkframe),1 do
	 loadfork()
     advanceRNG(i)
     
     E5=bit.band(E4+E5,0xFF)
	 Crab3pos=bit.band(E5,0x03)

	 advanceRNG(64)
	 
	 E5=bit.band(E4+E5,0xFF)
	 
	 Crab4pos=bit.band(E5,0x03)
	 
	 if Crab4pos==Crab3pos then
	 Crab4pos=bit.band(Crab4pos+0x02,0x03)
	 end
	 
	 Crab3pos=nametable[Crab3pos+1]
	 Crab4pos=nametable[Crab4pos+1]
	 
	 advanceRNG(41)
	 
	 Crab3timer=bit.band(E4+E5,0x01)
	 
	 advanceRNG(71)
	 
	 Crab4timer=bit.band(E4+E5,0x01)
	 
	 if Crab3pos=="Right" and Crab3timer==1 and Crab4pos=="Mid" and Crab4timer==1 then
	  table.insert(Forkframe,i)
	  emu.print("     "..i.." frame delay before Crab Phase 2")
      emu.print("*    Viable manip found! "..tablesum(Forkframe).." frames invested")
	  table.remove(Forkframe)
	 end
	 
	end
   returnfork()
   table.remove(Forkframe)
  end
 end
 returnfork()
end

while finished==0 do
 advanceRNG(1491) -- From game start to start of starfish spawner
 savefork()
 for i=0,maxframes, 1 do -- Test all possible starfish manipulations
  loadfork()
  advanceRNG(i)
  starfish()
  advanceRNG(288) -- From starfish spawner to start of shark fight
  printRNG("Shark screen scroll ("..i.." frame(s) delayed at starfish): ")
  table.insert(Forkframe,i)
  savefork()
   for i=0,maxframes-tablesum(Forkframe),1 do
    advanceRNG(i)
	printRNG(" Add'l "..i.." frame delay: ")
	
--BRANCH 1	
	table.insert(Forkframe,i)
	savefork()
	
    advanceRNG(1251)
	printRNG("  Branch 1: ")
	
    Stage2()
	
	returnfork()
	table.remove(Forkframe)
	
--BRANCH 2	
	table.insert(Forkframe,i)
	savefork()
	 
	returnfork()
	table.remove(Forkframe)
	
--BRANCH 3
	table.insert(Forkframe,i)
	savefork()
	 
	returnfork()
	table.remove(Forkframe)
	
--BRANCH 4
	table.insert(Forkframe,i)
	savefork()
	 
	returnfork()
	table.remove(Forkframe)

--BRANCH 5
	table.insert(Forkframe,i)
	savefork()
	 
	returnfork()
	table.remove(Forkframe)	
	
--BRANCH 6
	table.insert(Forkframe,i)
	savefork()
	 
	returnfork()
	table.remove(Forkframe)	

	end
  returnfork()
  table.remove(Forkframe)
  
 emu.print() 
 end
 finished=1
end

 --while framesearch==0 do
  --advanceRNG(1)
  --framecount=framecount+1
  --if E4==0xD7 and E5==0xE6 and E6==0x49 and E7==0x85 then 
   --framesearch=1
   --emu.print(framecount)
  --end
 --end