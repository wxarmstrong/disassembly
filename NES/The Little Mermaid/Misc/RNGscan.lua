finished=0

best=0
bestdelay1=0
bestdelay2=0
bestdelay3=0
delay1=0
delay2=0
delay3=0

subbranch={}
curbranch={}
branches={}
branch1={}
branch2={}
branch3={}
branch4={}
branch5={}
branch6={}
crab1={}
crab2={}
crab3={}
crab4={}
nametable={"Mid","Left","Right","Mid"}

maxframes=6

function initializeRNG()
 for i=0,3,1 do
  _G["E"..i+4]=memory.readbyte(i+0xE4)  
 end
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

function formatRNG()
 for i=0,3,1 do
  _G["PrintE"..i+4] = string.format("%x",_G["E"..i+4])
  if string.len(_G["PrintE"..i+4])==1 then
   _G["PrintE"..i+4] = "0".._G["PrintE"..i+4]
  end 
 end
 RNGstring=PrintE4.." "..PrintE5.." "..PrintE6.." "..PrintE7
end


while finished==0 do
for i=0,maxframes,1 do
branches={}
initializeRNG()
advanceRNG(i)
delay1=i
 emu.print("Delay: "..delay1.." frames")
 formatRNG()
 emu.print(RNGstring)
 emu.print("After Shark fight:")

 --BRANCH 1
 initializeRNG()
 advanceRNG(i)
 advanceRNG(1251) -- From beginning of shark fight to end of fight
 for i=1,4,1 do
  branch1[i]=_G["E"..i+3]
 end
 formatRNG()
 emu.print("Branch 1: " .. RNGstring)
 table.insert(branches,branch1)
 
 --BRANCH 2
 initializeRNG()
 advanceRNG(i)
 advanceRNG(866) -- From beginning of shark fight to 2nd 50/50 function
 E5=bit.band(E4+E5,0xFF)
 if bit.band(E5,0x01)==0x01 then
  advanceRNG(385) -- From 2nd 50/50 function to end of fight
  for i=1,4,1 do
   branch2[i]=_G["E"..i+3]
  end
 formatRNG()
 emu.print("Branch 2: ".. RNGstring)
 table.insert(branches,branch2)
 end
 
 --BRANCH 3
 initializeRNG()
 advanceRNG(i)
 advanceRNG(805) -- From beginning of shark fight to 2nd 50/50 function (delayed)
 E5=bit.band(E4+E5,0xFF)
 if bit.band(E5,0x01)==0x01 then
  advanceRNG(446) -- From 2nd 50/50 function (delayed) to end of fight
  for i=1,4,1 do
   branch3[i]=_G["E"..i+3]
  end
 formatRNG()
 emu.print("Branch 3: ".. RNGstring)
 table.insert(branches,branch3)
 end
  
 --BRANCH 4
 initializeRNG()
 advanceRNG(i)
 advanceRNG(160) -- From beginning of shark fight to 1st 50/50 function
 E5=bit.band(E4+E5,0xFF)
 if bit.band(E5,0x01)==0x01 then
  advanceRNG(1091) -- From 1st 50/50 function to end of fight
  for i=1,4,1 do
   branch4[i]=_G["E"..i+3]
  end
  formatRNG()
  emu.print("Branch 4: ".. RNGstring)
  table.insert(branches,branch4)
  
 --BRANCH 5
  initializeRNG()
  advanceRNG(i)
  advanceRNG(160)
  E5=bit.band(E4+E5,0xFF)
  advanceRNG(706)
  E5=bit.band(E4+E5,0xFF)
  if bit.band(E5,0x01)==0x01 then
   advanceRNG(385)
   for i=1,4,1 do
    branch5[i]=_G["E"..i+3]
   end
   formatRNG()
   emu.print("Branch 5: ".. RNGstring)
   table.insert(branches,branch5)
  end
 
 --BRANCH 6
  initializeRNG()
  advanceRNG(i)
  advanceRNG(160)
  E5=bit.band(E4+E5,0xFF)
  advanceRNG(645)
  E5=bit.band(E4+E5,0xFF)
   if bit.band(E5,0x01)==0x01 then
    advanceRNG(446)
    for i=1,4,1 do
     branch6[i]=_G["E"..i+3]
    end
   formatRNG()
   emu.print("Branch 6: ".. RNGstring)
   table.insert(branches,branch6)
  end
  
 end
 
 emu.print("Before Eel fight:")
 
 for i=1,#branches,1 do
  curbranch=branches[i]
  for i=1,4,1 do
   _G["E"..i+3] = curbranch[i]
  end
 advanceRNG(2080)
 formatRNG()
 emu.print("Branch "..i..": "..RNGstring)
 
 for i=1,4,1 do
  curbranch[i]=_G["E"..i+3]
 end
 
 for i=0,maxframes-delay1,1 do
 delay2=i
 
  for i=1,4,1 do
   _G["E"..i+3] = curbranch[i]
  end
  
 advanceRNG(112+i)
 
 formatRNG()
 
 E5=bit.band(E4+E5,0xFF)
 
 Crab1pos=bit.band(E5,0x03)
 
 crab1[1]=nametable[Crab1pos+1]
 
 advanceRNG(64)
 
 E5=bit.band(E4+E5,0xFF)
 
 Crab2pos=bit.band(E5,0x03)
 
 if Crab2pos==Crab1pos then
  Crab2pos=bit.band(Crab2pos+0x02,0x03)
 end
 
 crab2[1]=nametable[Crab2pos+1]
 
 
 advanceRNG(105)
 
 crab2[2]=bit.band(E4+E5,0x01)
 
 if crab1[1]=="Mid" and crab2[1]=="Left" and crab2[2]==0 and eel~=0 then
 emu.print(i..": "..crab1[1]..","..crab2[1].."("..Crab1pos..","..Crab2pos..")")
  for i=1,4,1 do
   subbranch[i]=_G["E"..i+3]
  end
  for i=0,maxframes-(delay1+delay2),1 do
   delay3=i
   for i=1,4,1 do
    _G["E"..i+3]=subbranch[i]
   end
   
   advanceRNG(63+i)
   E5 = bit.band(E4+E5,0xFF)
   Crab3pos=bit.band(E5,0x03)
   
   crab3[1]=nametable[Crab3pos+1]
   
   advanceRNG(64)
   
   E5=bit.band(E4+E5,0xFF)
   
   Crab4pos=bit.band(E5,0x03)
   
   if Crab4pos==Crab3pos then
    Crab4pos=bit.band(Crab4pos+0x02,0x03)
   end
   
   crab4[1]=nametable[Crab4pos+1]
   
   advanceRNG(41)
   crab3[2]=bit.band(E4+E5,0x01)
   advanceRNG(71)
   crab4[2]=bit.band(E4+E5,0x01)
   
   if crab3[1]=="Right" and crab3[2]==1 and crab4[1]=="Mid" and crab4[2]==1 then
    emu.print ("-"..i..": "..crab3[1]..","..crab4[1].."("..Crab3pos..","..Crab4pos..")")
	if best==0 or delay1+delay2+delay3<best then
	best=delay1+delay2+delay3
	bestdelay1=delay1
	bestdelay2=delay2
	bestdelay3=delay3
	end
   end
   
--274   
--277

  end
 end
 
 end
 
 end 
 end
 
 emu.print("Best manip: "..best.." frame investment")
 emu.print(bestdelay1..", "..bestdelay2..", "..bestdelay3)
 
 finished=1
end

--6921-7034