finished=0

E4=0x88
E5=0x00
E6=0x00
E7=0x00

fork1={}
fork2={}
fork3={}
fork4={}
forkframe={}

delay1=0
delay2=0

framecount=0
framesearch=0

maxframes=15
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
 table.insert(fork1,E4) 
 table.insert(fork2,E5)
 table.insert(fork3,E6)
 table.insert(fork4,E7)
end

function loadfork()
 E4=fork1[#fork1]
 E5=fork2[#fork2]
 E6=fork3[#fork3]
 E7=fork4[#fork4]
end

function returnfork()
 E4=table.remove(fork1)
 E5=table.remove(fork2)
 E6=table.remove(fork3)
 E7=table.remove(fork4)
end

function conv(n)
converted = "Branch "..n
if n ~= 1 then
 converted = converted.." ("

if n==2 or n==3 then
 converted = converted..delay2
end

if n==4 then
 converted = converted..delay1
end

if n==5 or n==6 then
 converted = converted..delay1..","..delay2
end

 converted = converted..")"
end
return converted
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
 for i=0,maxframes-tablesum(forkframe),1 do
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
   advanceRNG(63) 
   table.insert(forkframe,i)
   savefork()
   
    for i=0,maxframes-tablesum(forkframe),1 do
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
	  table.insert(forkframe,i)
	   emu.print("     "..i.." frame delay before Crab Phase 2")
       emu.print("*    Viable manip found! "..tablesum(forkframe).." frames invested")
	   table.insert(viable1,forkframe[1])
	   table.insert(viable2,forkframe[2])
	   table.insert(viable3,conv(curbranch))
	   table.insert(viable4,forkframe[3])
	   table.insert(viable5,forkframe[4])
	   numv=numv+1
	  table.remove(forkframe)
	 end
	 
	end
   returnfork()
   table.remove(forkframe)
  end
 end
 returnfork()
end

while finished==0 do
 advanceRNG(1491) -- From game start to start of starfish spawner
 savefork()       -- Save as first branch spot
 for i=0,maxframes, 1 do -- Test all possible starfish manipulations
  loadfork()             -- Load spot before starfish generator
  advanceRNG(i)
  starfish()
  advanceRNG(288) -- From starfish spawner to start of shark fight
  printRNG("Shark screen scroll ("..i.." frame(s) delayed at starfish): ")
  
  table.insert(forkframe,i)
  savefork()
  for i=0,maxframes-tablesum(forkframe),1 do
    loadfork()
    advanceRNG(i)
	printRNG(" Add'l "..i.." frame delay: ")
	
--BRANCH 1	
    curbranch=1
	table.insert(forkframe,i)
	savefork()
	
    advanceRNG(1251)
	printRNG("  Branch 1: ")
	
	Stage2()
	
	returnfork()
	table.remove(forkframe)
	
--BRANCH 2	
    curbranch=2
	table.insert(forkframe,i)
	savefork()
	
	advanceRNG(866)
	 
	returnfork()
	table.remove(forkframe)
	
--BRANCH 3
    curbranch=3
	table.insert(forkframe,i)
	savefork()
	 
	returnfork()
	table.remove(forkframe)
	
--BRANCH 4
    curbranch=4
	table.insert(forkframe,i)
	savefork()
	 
	returnfork()
	table.remove(forkframe)

--BRANCH 5
    curbranch=5
	table.insert(forkframe,i)
	savefork()
	 
	returnfork()
	table.remove(forkframe)	
	
--BRANCH 6
    curbranch=6
	table.insert(forkframe,i)
	savefork()
	 
	returnfork()
	table.remove(forkframe)	
	
	end
  returnfork()
  table.remove(forkframe)

 end
   emu.print()
   emu.print(numv.." viable manipulations found within "..maxframes.." frames!")
  
for i=1,numv,1 do
 emu.print(viable1[i]+viable2[i]+viable4[i]+viable5[i]..": "..viable1[i]..", "..viable2[i].." ("..viable3[i].."), "..viable4[i]..", "..viable5[i])
end
 
 finished=1
end