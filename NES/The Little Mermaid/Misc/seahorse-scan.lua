finished = 0
E4 = 0x76
E5 = 0xF8
E6 = 0x15
E7 = 0xE5

--Cur : C1E063A3 
--Alt1: C5109ABB
--Alt2: 7C5AA217
--WTF : 76F815E5
--WTF2: 9CD5EC47
--WTF3: 22FEBB46

fork1={}
fork2={}
fork3={}
fork4={}
forkframe={}

carry=0

vbranches={}

maxframes=32

delay=91

speedcode=0

speeds={"128 subpix/f","204 subpix/f","256 subpix/f","128 subpix/f","204 subpix/f","256 subpix/f","128 subpix/f","204 subpix/f"}

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
 savefork()           -- BRANCH POINT
 for i=0,maxframes,1 do
  carry=0
  loadfork()  
  advanceRNG(i)
  printRNG(i.." frame delay: ")
  advanceRNG(282)
  
  E6=E5+E6
  carry=bit.band(E6,0x100)/0x100
  E6=bit.band(E6,0xFF)
  
  if bit.band(E6,0x03)==1 then
   emu.print("    Phase 1 timer = 32")
   
   carry=0
   
   E7=E5+E7+carry 
   carry=bit.band(E7,0x100)/0x100
   E7=bit.band(E7,0xFF)
   
   if bit.band(E7,0x03)~=1 then
   
    E5=E5+E6+carry
	carry=bit.band(E5,0x100)/0x100
	E5=bit.band(E5,0xFF)
	
	speedcode=speeds[bit.band(E5,0x07)+1]
    emu.print("    Phase 1 Enemy 1: fish @ "..speedcode)
	
	carry=0
	
    E7=E5+E7+carry 
    carry=bit.band(E7,0x100)/0x100
    E7=bit.band(E7,0xFF)
	
	if bit.band(E7,0x03)~=1 then
	
     E5=E5+E6+carry
	 carry=bit.band(E5,0x100)/0x100
	 E5=bit.band(E5,0xFF)
	 
	 speedcode=speeds[bit.band(E5,0x07)+1]
	 emu.print("    Phase 1 Enemy 2: fish @ "..speedcode)
	 
	 advanceRNG(delay)
	 
	 E6=E5+E6
     carry=bit.band(E6,0x100)/0x100
     E6=bit.band(E6,0xFF)
  
     if bit.band(E6,0x03)==1 then
      emu.print("        Phase 2 timer = 32")
   
      carry=0
   
      E7=E5+E7+carry 
      carry=bit.band(E7,0x100)/0x100
      E7=bit.band(E7,0xFF)
   
      if bit.band(E7,0x03)~=1 then
   
       E5=E5+E6+carry
	   carry=bit.band(E5,0x100)/0x100
	   E5=bit.band(E5,0xFF)
	
	   speedcode=speeds[bit.band(E5,0x07)+1]
       emu.print("        Phase 2 Enemy 2: fish @ "..speedcode)
	
	   carry=0
	
       E7=E5+E7+carry 
       carry=bit.band(E7,0x100)/0x100
       E7=bit.band(E7,0xFF)
	
	   if bit.band(E7,0x03)~=1 then
	
        E5=E5+E6+carry
	    carry=bit.band(E5,0x100)/0x100
	    E5=bit.band(E5,0xFF)
	 
	    speedcode=speeds[bit.band(E5,0x07)+1]
	    emu.print("        Phase 2 Enemy 2: fish @ "..speedcode)
		
		advanceRNG(delay)
		
	 E6=E5+E6
     carry=bit.band(E6,0x100)/0x100
     E6=bit.band(E6,0xFF)
   
      carry=0
   
      E7=E5+E7+carry 
      carry=bit.band(E7,0x100)/0x100
      E7=bit.band(E7,0xFF)
   
      E7save1=E7
   
       E5=E5+E6+carry
	   carry=bit.band(E5,0x100)/0x100
	   E5=bit.band(E5,0xFF)
	
	   carry=0
	
       E7=E5+E7+carry 
       carry=bit.band(E7,0x100)/0x100
       E7=bit.band(E7,0xFF)
	
	   E7save2=E7
	
       if E7save1~=1 or E7save2~=1 then
	    emu.print("************VIABLE MANIP FOUND!")
		end
	   end
      end
     end 
    end
   end 
  end
 end
 returnfork()
 
 emu.print("Scan complete!")
 emu.print("Branches found:")
 
 for i=1,#vbranches,1 do
  emu.print(vbranches[i])
 end
 
 finished=1
end