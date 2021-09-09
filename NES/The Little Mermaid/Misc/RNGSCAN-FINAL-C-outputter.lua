io.output("Mermaid-output-C.txt")

finished = 0
E4 = 0x88
E5 = 0x00
E6 = 0x00
E7 = 0x00

fork1={}
fork2={}
fork3={}
fork4={}
forkframe={}

vbranches={}

maxframes=10

nametable={"Mid","Left","Right","Mid"}

function starfish()
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
  advanceRNG(1)
  printRNG("After 1st starfish: " )
  
  advanceRNG(12)
  
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
  advanceRNG(1)
  printRNG("After 2nd starfish: " )
  
  advanceRNG(12)
  
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
  advanceRNG(1)
  printRNG("After 3rd starfish: " )
  
  advanceRNG(12)
  
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
  advanceRNG(1)
  printRNG("After 4th starfish: " )
  
  advanceRNG(12)
  
  E5=bit.band(E4+E6,0xFF)
  E6=bit.band(E4+E5,0xFF)
  advanceRNG(1)
  printRNG("After 5th starfish: " )
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
 io.write(msg..PrintE4.." "..PrintE5.." "..PrintE6.." "..PrintE7.." ("..#fork1.." branches saved) \n")
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

function Stage2()
 advanceRNG(2080)
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
  io.write("Crab 1 position: "..crab1pos.."\n")
  crab2pos=nametable[crab2pos+1]
  io.write("Crab 2 position: "..crab2pos.."\n")
  
  advanceRNG(105)
  
  crab2timer=bit.band(E4+E5,0x01)
  
  crab2timer=128-64*crab2timer
  
  advanceRNG(1)
  printRNG("Crab 2 timer set: ")
  
  if crab2pos=="Left" or crab2pos=="Right" then
  io.write("Crab 2 timer: "..crab2timer.."\n")
  end 
  
  if crab1pos=="Mid" and crab2pos=="Left" and crab2timer==128 then
   io.write("Correct timer for Crab 2! \n")
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
    io.write("Crab 3 position: "..crab3pos.."\n")
	crab4pos=nametable[crab4pos+1]
	io.write("Crab 4 position: "..crab4pos.."\n")
	
	advanceRNG(41)
	
	crab3timer=bit.band(E4+E5,0x01)
    crab3timer=128-64*crab3timer
	if crab3pos=="Left" or crab3pos=="Right" then
	io.write("Crab 3 timer: "..crab3timer.."\n")
	end
	
	advanceRNG(71)
	
	crab4timer=bit.band(E4+E5,0x01)
	crab4timer=128-64*crab4timer
	if crab4pos=="Mid" then
    io.write("Crab 4 timer: "..crab4timer.."\n")
	end
	
	if crab3pos=="Right" and crab3timer==64 and crab4pos=="Mid" and crab4timer==128 then
     table.insert(forkframe,i)
	 
	 io.write("     "..i.." frame delay before Crab Phase 2 \n")
	 io.write("       Manip found in "..tablesum(forkframe).." frames! \n")
	 if curbranch==1 then
	  table.insert(vbranches,tablesum(forkframe)..": "..forkframe[1]..", "..forkframe[2].." (Branch 1), "..forkframe[3]..", "..forkframe[4])
	 elseif curbranch>=5 then
	  table.insert(vbranches,tablesum(forkframe)..": "..forkframe[1]..", "..forkframe[2].." (Branch "..curbranch..": "..forkframe[3]..", "..forkframe[4].."), "..forkframe[5]..", "..forkframe[6])
	 else 
	  table.insert(vbranches,tablesum(forkframe)..": "..forkframe[1]..", "..forkframe[2].." (Branch "..curbranch..": "..forkframe[3].."), "..forkframe[4]..", "..forkframe[5])
	 end
	 io.write(vbranches[#vbranches].."\n")
	 table.remove(forkframe)
	end
	
   end
   
   table.remove(forkframe)
   returnfork()
 end
end

 returnfork()
end

while finished==0 do
 advanceRNG(1492)     -- From start of game to Starfish Generator
 savefork()           -- BRANCH POINT
 emu.print("Beginning scan:")
 
 for i=0,maxframes,1 do
  io.write("\n")
  emu.print("Now scanning: initial frame delay "..i)
  loadfork()
  advanceRNG(i)
  printRNG(i.." frame delay: ")
  starfish()
  advanceRNG(285)     -- From Starfish Generator to Shark room
  printRNG("Shark screen scroll: ")
  
  table.insert(forkframe,i)
  savefork()          -- BRANCH POINT 
  
  for i=0,maxframes-tablesum(forkframe),1 do
   loadfork()
   advanceRNG(i)
   printRNG(" Add'l "..i.." frame delay: ")
   
   table.insert(forkframe,i)
   savefork()         -- BRANCH POINT
   
   for i=1,6,1 do
    loadfork()
	curbranch = i
	
	
	if     i == 1 then
     advanceRNG(1251)
     printRNG("Branch 1: ")
	 Stage2()
	 
	 
	elseif i == 2 then 
	 advanceRNG(865) -- From beginning of shark fight to 2nd 50/50
	 
	 savefork()
	 for i=0,maxframes-tablesum(forkframe)-1,1 do
  loadfork()
  advanceRNG(i)
  E5=bit.band(E4+E5,0xFF)
  if bit.band(E5,0x01)==0x01 then
   advanceRNG(1)
   printRNG(i.." frame delay: ")
   advanceRNG(385)
   
   table.insert(forkframe,i)
   savefork()
   
   printRNG("Success! ")
   
   table.remove(forkframe)
   returnfork()
  end
  
 end
	 returnfork()
	
	
	
	
	
	
	elseif i == 3 then 
	 advanceRNG(805) -- From beginning of shark fight to 2nd 50/50 (delayed)
	 
	 savefork()
	 for i=0,maxframes-tablesum(forkframe),1 do
  loadfork()
  advanceRNG(i)
  E5=bit.band(E4+E5,0xFF)
  if bit.band(E5,0x01)==0x01 then
   advanceRNG(1)
   printRNG(i.." frame delay: ")
   advanceRNG(445)
   
   table.insert(forkframe,i)
   savefork()
   
   printRNG("Success! ")
   
   table.remove(forkframe)
   returnfork()
	  end
	 end
	 returnfork()
	
	
	
	
     elseif i == 4 then 
	 advanceRNG(160) -- From beginning of shark fight to 1st 50/50
	 
	 savefork()
	 for i=0,maxframes-tablesum(forkframe),1 do
 loadfork()
  advanceRNG(i)
  E5=bit.band(E4+E5,0xFF)
  if bit.band(E5,0x01)==0x01 then
   advanceRNG(1)
   printRNG(i.." frame delay: ")
   advanceRNG(1090)
   
   table.insert(forkframe,i)
   savefork()
   
   printRNG("Success! ")
   
   table.remove(forkframe)
   returnfork()
  end
  
 end

 returnfork()
	
	
	
	
	
	
     elseif i == 5 then 
	 advanceRNG(160) -- 
	 
	 savefork()
	 
	 for i=0,maxframes-tablesum(forkframe),1 do
      loadfork()
	  advanceRNG(i)

	  E5=bit.band(E4+E5,0xFF)
	  if bit.band(E5,0x01)==0x01 then
	   advanceRNG(1)
	   printRNG(i.." frame delay: ")
	   advanceRNG(704) -- 
	   
	   table.insert(forkframe,i)
	   savefork()
	  
	   for i=0,maxframes-tablesum(forkframe),1 do
      loadfork()
	  advanceRNG(i)
		E5=bit.band(E4+E5,0xFF)
		if bit.band(E5,0x01)==0x01 then
		 advanceRNG(1)
		 printRNG(" "..i.." frame delay: ")
		 advanceRNG(385)
		 
		 table.insert(forkframe,i)
		 savefork()
		 
	     printRNG("  Branch 5 ("..forkframe[#forkframe-1]..","..forkframe[#forkframe].."): ")
	     Stage2()
		 
		 table.remove(forkframe)
		 returnfork()
	    end
	   end
	  
	   table.remove(forkframe)
	   returnfork()
	  end
	 end
	 
	 returnfork()
	
	elseif i == 6 then
	
	 advanceRNG(160) -- 
	 
	 savefork()
	 
	 for i=0,maxframes-tablesum(forkframe),1 do
      loadfork()
	
	  advanceRNG(i)
	  E5=bit.band(E4+E5,0xFF)
	  if bit.band(E5,0x01)==0x01 then
	   advanceRNG(1)
	   printRNG(i.." frame delay")
	   advanceRNG(644) -- 
	   
	   table.insert(forkframe,i)
	   savefork()
	  
	   for i=0,maxframes-tablesum(forkframe),1 do
     loadfork()
	  advanceRNG(i)
		E5=bit.band(E4+E5,0xFF)
		if bit.band(E5,0x01)==0x01 then
		  advanceRNG(1)
		  printRNG(" "..i.." frame delay: ")
		 advanceRNG(445)
		 
		 table.insert(forkframe,i)
		 savefork()
		 
	     printRNG("  Branch 6 ("..forkframe[#forkframe-1]..","..forkframe[#forkframe].."): ")
	     Stage2()
		 
		 table.remove(forkframe)
		 returnfork()
	    end
	   end
	  
	   table.remove(forkframe)
	   returnfork()
	  end
	 end
	 
	returnfork()
	
	end 
   end
  
   
   table.remove(forkframe)
   returnfork()
   
   end

  table.remove(forkframe)
  returnfork()
   
  end
 
 returnfork()
 
 io.write("Scan complete! \n")
 io.write("Branches found: \n")
 
 for i=1,#vbranches,1 do
  io.write(vbranches[i].."\n")
 end
 
 emu.print("Finished!")
 
 finished=1
end