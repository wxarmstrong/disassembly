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

while finished==0 do
for i=0x0000, 0x4000, 1 do
 E4 = bit.band(i,0xFF00)/0x100
 E5 = bit.band(i,0x00FF)
 E6 = 0
 E7 = 0
 advanceRNG(100)
if 256*E4+E5==0xFF01 then
 printstring=string.format("%s",i)
 while string.len(printstring)<=3 do
 printstring = "0"..printstring end 
 emu.print(printstring)
end
end
emu.print "end of list!"
finished=1
end