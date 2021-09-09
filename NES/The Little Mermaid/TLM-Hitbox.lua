timer1=0
timer2=0
nextstring=0

orienttext={"horizontal","vertical(downward)","vertical(upward)"}

for i=4,7,1 do
_G["E"..i]=0
_G["NextE"..i]=0
end 

while true do
 room       = bit.band(memory.readbyte(0x50),0x0F)
 roomorient = bit.band(memory.readbyte(0x50),0xF0)
 roomlength = memory.readbyte(0x51)
 
 roomlookup = memory.readbyte(0x70)+256*memory.readbyte(0x71)
 yposadjust = 1

 if roomorient == 0x40 then
  yposadjust = -1
 end
 
 screenxpos = memory.readbyte(0xFC)+256*memory.readbyte(0xFD)
 screenypos = memory.readbyte(0xFA)-240*yposadjust*memory.readbyte(0xFB)
 
 roomscrollx = memory.readbyte(0xF7)+256*memory.readbyte(0x52)
 roomscrolly = memory.readbyte(0xF8)-yposadjust*240*memory.readbyte(0x52)
 
 roomlengthsum = 0
 
 if room~=0 then
  for i=0,room-1,1 do
   roomlengthsum=roomlengthsum+bit.band(memory.readbyte(roomlookup+i),0x0F)+1
  end
 end
 
 roomdata = memory.readbyte(0x6E)+256*memory.readbyte(0x6F)+roomlengthsum
 
 if roomorient == 0x00 then
 roomscrolly=0
 for i=0,roomlength,1 do
  block=i
  chunkoffset=64*memory.readbyte(roomdata+i)
  for i=0,63,1 do
   Tile32=rom.readbyte(0x4010+((memory.readbyte(0x60)+256*(memory.readbyte(0x61))-0x8000))+chunkoffset+i)
   posx=i%8
   posy=math.floor(i/8)
   for i=0,3,1 do
    Tile16=rom.readbyte(0x510+((memory.readbyte(0x62)+256*memory.readbyte(0x63))-0x8500)+4*Tile32+i)
    subposy=math.floor(i/2)
    subposx=i%2
    boxpos={256*block+32*posx+16*subposx,32*posy+16*subposy,256*block+32*posx+16*subposx+16,32*posy+16*subposy+16}
    TileStat=(0x410+((memory.readbyte(0x6C)+256*memory.readbyte(0x6D))-0x8400))
   if bit.band(rom.readbyte(TileStat+Tile16),0x10)~=0 then
    gui.box(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[3]-roomscrollx,boxpos[4]-roomscrolly,50,"red")
   end 
   if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0x80 then
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16,boxpos[1]-roomscrollx,boxpos[2],"red")
    gui.line(boxpos[1]-roomscrollx+16,boxpos[2],boxpos[1]-roomscrollx,boxpos[2],"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2]+16,boxpos[1]-roomscrollx+16,boxpos[2],"red")
   end 
    if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0xC0 then
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16,boxpos[1]+16-roomscrollx,boxpos[2]+16,"red")
    gui.line(boxpos[1]-roomscrollx+16,boxpos[2]+16,boxpos[1]+16-roomscrollx,boxpos[2],"red")
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16,boxpos[1]-roomscrollx+16,boxpos[2],"red")
	end 
    if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0x60 then
	gui.line(boxpos[1]-roomscrollx,boxpos[2],boxpos[1]+16-roomscrollx,boxpos[2],"red")
	gui.line(boxpos[1]+16-roomscrollx,boxpos[2],boxpos[1]+16-roomscrollx,boxpos[2]+16,"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2],boxpos[1]+16-roomscrollx,boxpos[2]+16,"red")
   end 
    if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0xA0 then
	gui.line(boxpos[1]-roomscrollx,boxpos[2],boxpos[1]+16-roomscrollx,boxpos[2]+16,"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2],boxpos[1]-roomscrollx,boxpos[2]+16,"red")
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16,boxpos[1]-roomscrollx+16,boxpos[2]+16,"red")
   end 
   end
  end
  end
  end
  
 if roomorient == 0x80 or roomorient == 0x40 then
 roomscrollx=0
 for i=0,roomlength,1 do
  block=i
  chunkoffset=64*memory.readbyte(roomdata+i)
  for i=0,63,1 do
   Tile32=rom.readbyte(0x4010+((memory.readbyte(0x60)+256*(memory.readbyte(0x61))-0x8000))+chunkoffset+i)
   posx=i%8
   posy=math.floor(i/8)
   for i=0,3,1 do
    Tile16=rom.readbyte(0x510+((memory.readbyte(0x62)+256*memory.readbyte(0x63))-0x8500)+4*Tile32+i)
    subposy=math.floor(i/2)
    subposx=i%2
    boxpos={32*posx+16*subposx,32*posy+16*subposy-240*yposadjust*block,32*posx+16*subposx+16,32*posy+16*subposy+16-240*yposadjust*block}
    TileStat=(0x410+((memory.readbyte(0x6C)+256*memory.readbyte(0x6D))-0x8400))
   if bit.band(rom.readbyte(TileStat+Tile16),0x10)~=0 then
    gui.box(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[3]-roomscrollx,boxpos[4]-roomscrolly,50,"red")
   end 
    if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0x80 then
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,"red")
    gui.line(boxpos[1]-roomscrollx+16,boxpos[2]-roomscrolly,boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]-roomscrollx+16,boxpos[2]-roomscrolly,"red")
   end 
    if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0xC0 then
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]+16-roomscrolly,"red")
    gui.line(boxpos[1]-roomscrollx+16,boxpos[2]+16-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]-roomscrolly,"red")
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]-roomscrollx+16,boxpos[2]-roomscrolly,"red")
	end 
    if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0x60 then
	gui.line(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]-roomscrolly,"red")
	gui.line(boxpos[1]+16-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]+16-roomscrolly,"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]+16-roomscrolly,"red")
   end 
    if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0xA0 then
	gui.line(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]+16-roomscrolly,"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,"red")
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]-roomscrollx+16,boxpos[2]+16-roomscrolly,"red")
   end 
   end
  end
  end
  end
  
  heldobject = memory.readbyte(0x3A)
  for i = 3,15,1 do
   if bit.band(memory.readbyte(0x300+i),0x80)~=0 then
    objectxpos = memory.readbyte(0x330+i)+256*memory.readbyte(0x340+i)
    objectypos = memory.readbyte(0x360+i)-240*yposadjust*memory.readbyte(0x370+i)
	if memory.readbyte(0x310+i)==0x30 and heldobject ~= i then
	 gui.box(objectxpos-screenxpos-4, objectypos-screenypos-4, objectxpos-screenxpos+4, objectypos-screenypos+4)
	end
    if heldobject == i or memory.readbyte(0x310+i)==1 then
     if memory.readbyte(0x310+i)==1 then
      gui.box(objectxpos-screenxpos-4, objectypos-screenypos-4, objectxpos-screenxpos+4, objectypos-screenypos+4)
   	 end
	 gui.box(objectxpos-screenxpos-1, objectypos-screenypos-1, objectxpos-screenxpos+1, objectypos-screenypos+1,"black")
     gui.pixel(objectxpos-screenxpos, objectypos-screenypos,"green")
	 else
     boxtype = bit.band(memory.readbyte(0x03C0+i),0x1F)
	 height   = rom.readbyte(0x1FB70+boxtype)
	 width    = rom.readbyte(0x1FB90+boxtype)
     gui.box(objectxpos-screenxpos-width, objectypos-screenypos-height, objectxpos-screenxpos+width, objectypos-screenypos+height)
	 gui.text(objectxpos-screenxpos,objectypos-screenypos,memory.readbyte(0x460+i))
     end 
   end 
  end
  
 ariel   = {memory.readbyte(0x0330)+256*memory.readbyte(0x0340)-screenxpos,memory.readbyte(0x0360)-240*yposadjust*memory.readbyte(0x0370)-screenypos,"red"}
 bubble1 = {memory.readbyte(0x0331)+256*memory.readbyte(0x0341)-screenxpos,memory.readbyte(0x0361)-240*yposadjust*memory.readbyte(0x0371)-screenypos,"red"}
 bubble2 = {memory.readbyte(0x0332)+256*memory.readbyte(0x0342)-screenxpos,memory.readbyte(0x0362)-240*yposadjust*memory.readbyte(0x0372)-screenypos,"red"}
 
arielxvel = (memory.readbyte(0x0380)+256*memory.readbyte(0x0390))
if bit.band(memory.readbyte(0x31),0x03)==0 then
arielxvel = 0
elseif bit.band(memory.readbyte(0x31),0x02)==2 then
arielxvel=-1*arielxvel
end 
 
--if bit.band(memory.readbyte(0x31),0x02)==2 and memory.readbyte(0x400)==0xD0 then
--arielxvel=-1*arielxvel
--end
 
--if bit.band(memory.readbyte(0x31),0x01)==1 and memory.readbyte(0x400)==0x90 then
--arielxvel=-1*arielxvel
--end
 
arielyvel = (memory.readbyte(0x03A0)+256*memory.readbyte(0x03B0))
if bit.band(memory.readbyte(0x31),0x0C)==0 then
arielyvel = 0
elseif bit.band(memory.readbyte(0x31),0x08)==8 then
arielyvel=-1*arielyvel
end 
 

function round(val, decimal)
  if (decimal) then
    return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(val+0.5)
  end
end
 
 gui.box(ariel[1]-9,ariel[2]-8,ariel[1]+9,ariel[2]+8)
 gui.box(ariel[1]-1,ariel[2]-1,ariel[1]+1,ariel[2]+1,"black")
if arielxvel~=0 or arielyvel~=0 then
gui.text(ariel[1],ariel[2]+10,round(math.sqrt(arielxvel*arielxvel+arielyvel*arielyvel),1).." subpx/f","white","black")
end 

xsubpix=memory.readbyte(0x320)
while string.len(xsubpix)<3 do
xsubpix="0"..xsubpix end

ysubpix=memory.readbyte(0x350)
while string.len(ysubpix)<3 do
ysubpix="0"..ysubpix end

gui.text(0,184,"X: "..memory.readbyte(0x0330)+256*memory.readbyte(0x0340).."."..xsubpix)
gui.text(0,192,"Y: "..memory.readbyte(0x0360)+256*memory.readbyte(0x0370).."."..ysubpix)


 if memory.readbyte(0x301) >= 128 then 
 gui.box(bubble1[1]-1,bubble1[2]-1,bubble1[1]+1,bubble1[2]+1,"black") end
 if memory.readbyte(0x302) >= 128 then
 gui.box(bubble2[1]-1,bubble2[2]-1,bubble2[1]+1,bubble2[2]+1,"black") end
 
 gui.pixel(ariel[1],ariel[2],ariel[3])
 
 if memory.readbyte(0x301) >= 128 then
 gui.pixel(bubble1[1],bubble1[2],bubble1[3]) end
 if memory.readbyte(0x302) >= 128 then
 gui.pixel(bubble2[1],bubble2[2],bubble2[3]) end
 
 oldstring = string.format(E4.." "..E5.." "..E6.." "..E7)
 
 for i=4,7,1 do
  _G["E"..i] = string.format("%x",memory.readbyte(0xE0+i))
  if string.len(_G["E"..i])==1 then 
  _G["E"..i] = "0" .. _G["E"..i]
  end
 end 
 
 curstring=E4.." "..E5.." "..E6.." "..E7
 gui.text(160,200,"RNG: "..curstring)
 
 if curstring~=nextstring and curstring~=oldstring then
 timer1=10 end
 if curstring==oldstring then
 timer2=10 end
 
if timer1~=0 then
gui.text(160,216,"RNG altered!")
timer1=timer1-1 end

if timer2~=0 then
gui.text(160,224,"RNG paused!")
timer2=timer2-1 end

carry0=0
if bit.bxor(bit.band(memory.readbyte(0xE4),0x02),bit.band(memory.readbyte(0xE5),0x02)) ~= 0 then
carry0=1 end

for i=1,3,1 do
_G["carry"..i]=0
if bit.band(memory.readbyte(0xE3+i),0x01)==1 then 
_G["carry"..i]=1
end 
end

for i=0,3,1 do
_G["NextE"..i+4] = string.format("%x",128*_G["carry"..i]+ bit.rshift(memory.readbyte(0xE4+i),1))
if string.len(_G["NextE"..i+4])==1 then
_G["NextE"..i+4]="0".._G["NextE"..i+4]
end
end
nextstring = NextE4.." "..NextE5.." "..NextE6.." "..NextE7

gui.text(160,208,"Next: "..nextstring)

gui.text(0,208,"Stage ".. memory.readbyte(0xE9)+1 ..", Room "..bit.band(memory.readbyte(0x50),0x0F)+1)
gui.text(0,216,"Room position: " .. memory.readbyte(0x52)+1 .. "/" .. roomlength+1)
gui.text(0,224,"Orientation: " .. orienttext[(roomorient/0x40)+1])
emu.frameadvance()
end