E4=0x92
E5=0x4D
E6=0x69
E7=0xF3



forkframe={}

fork1={}
fork2={}
fork3={}
fork4={}

finished=0

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

while finished~=1 do

 advanceRNG(805)                 --
 
 savefork()
 
 for i=0,31,1 do
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
 
 finished=1
end