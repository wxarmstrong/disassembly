E4 = 0x88
E5 = 0x00
E6 = 0x00
E7 = 0x00
finished=0

function formatRNG()
 for i=0,3,1 do
  _G["PrintE"..i+4] = string.format("%x",_G["E"..i+4])
  if string.len(_G["PrintE"..i+4])==1 then
   _G["PrintE"..i+4] = "0".._G["PrintE"..i+4]
  end 
 end
 RNGstring=PrintE4.." "..PrintE5.." "..PrintE6.." "..PrintE7
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

while finished==0 do
for i=0,100000,1 do
 if E4==0x00 then
 if bit.band(E5+E6,0xFF)==0x00 or bit.band(E5+E6,0xFF)==0x01 or E6==0x00 or E6==0x01 then
   formatRNG()
   emu.print(i.." frames: "..RNGstring)
 end 
 end 
advanceRNG(1)
end
emu.print("Scan complete!")
finished=1
end 