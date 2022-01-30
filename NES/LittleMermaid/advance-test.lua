E4=0xD8
E5=0xAD
E6=0x1C
E7=0x46

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
 total=0
 while E4~=0x5F or E5~=0xB7 do
  advanceRNG(1)
  total=total+1
  emu.print(total.."frames...")
 end
 emu.print(total.." frame delay required")
 finished=1
end 