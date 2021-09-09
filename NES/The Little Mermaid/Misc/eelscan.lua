finished = 0
E4 = 0x84
E5 = 0x9D
E6 = 0x94
E7 = 0xAF

fork1={}
fork2={}
fork3={}
fork4={}
forkframe={}

prevpos=0

vbranches={}

maxframes=60

nametable={"Mid","Left","Right","Mid"}

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
 emu.print(msg..PrintE4.." "..PrintE5.." "..PrintE6.." "..PrintE7.." ("..#fork1.." branches saved)")
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
function tablesum(table)
 sum=0
 for i=1,#table,1 do
  sum=sum+table[i]
 end
 return sum 
end

while finished==0 do
 savefork()
 for i=0,maxframes-tablesum(forkframe),1 do
  prevpos=0
  loadfork()
  advanceRNG(i)
  printRNG(i.." frame delay before Phase 1: ")
  advanceRNG(112)
  E5=bit.band(E4+E5,0xFF)
  
  crab1pos=bit.band(E5,0x03)
  
  if crab1pos==prevpos then
   crab1pos=bit.band(crab1pos+0x02,0x03)
  end
  prevpos=crab1pos
  
  advanceRNG(1)
  printRNG("After Crab 1: ")
  
  advanceRNG(63)
  E5=bit.band(E4+E5,0xFF)
  
  crab2pos=bit.band(E5,0x03)
  
  if crab2pos==prevpos then
   crab2pos=bit.band(crab2pos+0x02,0x03)
  end
  prevpos=crab2pos
  
  advanceRNG(1)
  printRNG("After Crab 2: ")
  
  crab1pos=nametable[crab1pos+1]
  emu.print("Crab 1 position: "..crab1pos)
  crab2pos=nametable[crab2pos+1]
  emu.print("Crab 2 position: "..crab2pos)
  
  advanceRNG(105)
  
  crab2timer=bit.band(E4+E5,0x01)
  
  crab2timer=64*(crab2timer+1)
  
  advanceRNG(1)
  printRNG("Crab 2 timer set: ")
  
  if crab2pos=="Left" or crab2pos=="Right" then
  emu.print("Crab 2 timer: "..crab2timer)
  end 
  
  if crab1pos=="Mid" and crab2pos=="Left" and crab2timer==64 then
   emu.print("Correct timer for Crab 2!")
   advanceRNG(62)
   savefork()
   table.insert(forkframe,i)
   savedprevpos=prevpos
   
   for i=0,maxframes-tablesum(forkframe),1 do
    prevpos=savedprevpos
    loadfork()
	
	advanceRNG(i)
	E5=bit.band(E4+E5,0xFF)
    crab3pos=bit.band(E5,0x03)
	
	if crab3pos==prevpos then
     crab3pos=bit.band(crab3pos+0x02,0x03)
    end
	
    prevpos=crab3pos
	
   printRNG(i.." frame delay before Phase 2: ")


  
	
	advanceRNG(64)
	E5=bit.band(E4+E5,0xFF)
	crab4pos=bit.band(E5,0x03)
	
  if crab4pos==prevpos then
   crab4pos=bit.band(crab4pos+0x02,0x03)
  end
  
	
  printRNG(" After Crab 4: ")	
	
	crab3pos=nametable[crab3pos+1]
    emu.print("Crab 3 position: "..crab3pos)
	crab4pos=nametable[crab4pos+1]
	emu.print("Crab 4 position: "..crab4pos)
	
	advanceRNG(41)
	
	crab3timer=bit.band(E4+E5,0x01)
    crab3timer=64*(crab3timer+1)
	if crab3pos=="Left" or crab3pos=="Right" then
	emu.print("Crab 3 timer: "..crab3timer)
	end
	
	advanceRNG(71)
	
	crab4timer=bit.band(E4+E5,0x01)
	crab4timer=64*(crab4timer+1)
	if crab4pos=="Mid" then
    emu.print("Crab 4 timer: "..crab4timer)
	end
	
	if crab3pos=="Right" and crab3timer==128 and crab4pos=="Mid" and crab4timer==128 then
     table.insert(forkframe,i)
	 
	 emu.print("     "..i.." frame delay before Crab Phase 2")
	 emu.print("       Manip found in "..tablesum(forkframe).." frames!")
	 
	 table.remove(forkframe)
	end
	
   end
   
   table.remove(forkframe)
   returnfork()
 end
end
 
 finished=1
end