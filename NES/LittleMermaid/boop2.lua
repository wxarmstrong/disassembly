timer1=0
timer2=0
nextstring=0

orienttext={"horizontal","vertical(downward)","vertical(upward)"}

for i=4,7,1 do
_G["E"..i]=0
_G["NextE"..i]=0
end 

while true do
 if memory.readbyte(0x60)~=0 or memory.readbyte(0x61)~=0 then
  room            = bit.band(memory.readbyte(0x50),0x0F)
  roominfoaddress = memory.readbyte(0x70)+256*memory.readbyte(0x71)
  roomorient = bit.band(memory.readbyte(roominfoaddress+room),0xF0)
  yposadjust = 1
  if roomorient == 0x40 then
   yposadjust = -1
  end
  screenxpos = memory.readbyte(0xFC)+256*memory.readbyte(0xFD)
  screenypos = memory.readbyte(0xFA)-240*yposadjust*memory.readbyte(0xFB)
  roomlength = bit.band(memory.readbyte(roominfoaddress+room),0x0F)
  roomoffsetx = 0
  roomoffsety = 0
  roomlengthsum = 0
  if room~=0 then
   for i=0,room-1,1 do
    if     bit.band(memory.readbyte(roominfoaddress+i),0xF0)==0x00 then
	roomoffsetx = roomoffsetx+bit.band(memory.readbyte(roominfoaddress+i),0x0F)+1
	elseif bit.band(memory.readbyte(roominfoaddress+i),0xF0)==0x40 then
	roomoffsety = roomoffsety+bit.band(memory.readbyte(roominfoaddress+i),0x0F)+1
	roomoffsetx = roomoffsetx+1
	elseif bit.band(memory.readbyte(roominfoaddress+i),0xF0)==0x80 then
	roomoffsety = roomoffsety-bit.band(memory.readbyte(roominfoaddress+i),0x0F)-1
	roomoffsetx = roomoffsetx+1
	end
    roomlengthsum=roomlengthsum+bit.band(memory.readbyte(roominfoaddress+i)+1,0x0F)
   end
  end 
  
  roomx= 256*roomoffsetx
  roomy= 160*roomoffsety
  
  gui.text(0,8,"Reading tile data from ROM location 0x" .. string.format("%x",64*roomlengthsum+0x4010+((memory.readbyte(0x60)+256*memory.readbyte(0x61))-0x8000)))
  gui.text(0,16,"Pixel offset: " .. roomx .. "," .. roomy)
  gui.text(0,24,"Screen position: " .. screenxpos .. "," .. screenypos)
  
if roomorient==0x00 then
 for i=0,64*(roomlength+1)-1,1 do
  ScreenNum=math.floor(i/64)
  Tile32=rom.readbyte(64*roomlengthsum+0x4010+((memory.readbyte(0x60)+256*memory.readbyte(0x61))-0x8000)+i)
  posy=math.floor((i-64*ScreenNum)/8)
  posx=i%8
  for i=0,3,1 do
   Tile16=rom.readbyte(0x510+((memory.readbyte(0x62)+256*memory.readbyte(0x63))-0x8500)+4*Tile32+i)
   subposy=math.floor(i/2)
   subposx=i%2
   boxpos={roomx+32*posx+16*subposx,roomy+32*posy+16*subposy,roomx+32*posx+16*subposx+16,roomy+32*posy+16*subposy+16}
   TileStat=(0x410+((memory.readbyte(0x6C)+256*memory.readbyte(0x6D))-0x8400))
   --gui.text(roomx+256*ScreenNum+boxpos[1]-xpos,roomy+boxpos[2]-ypos,string.format("%x",rom.readbyte(TileStat+Tile16)))
   if bit.band(rom.readbyte(TileStat+Tile16),0x10)~=0 then
    gui.box(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos,256*ScreenNum+boxpos[3]-screenxpos,boxpos[4]-screenypos,50,"red")
   end 
   if rom.readbyte(TileStat+Tile16)==0x83 or rom.readbyte(TileStat+Tile16)==0x80 then
    gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos+16,256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos,"red")
    gui.line(256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-screenypos,256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos,"red")
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos+16,256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-screenypos,"red")
   end 
    if rom.readbyte(TileStat+Tile16)==0xC3 or rom.readbyte(TileStat+Tile16)==0xC0 then
    gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos+16,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-screenypos+16,"red")
    gui.line(256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-screenypos+16,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-screenypos,"red")
    gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos+16,256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-screenypos,"red")
	end 
    if rom.readbyte(TileStat+Tile16)==0x63 or rom.readbyte(TileStat+Tile16)==0x60 then
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-screenypos,"red")
	gui.line(256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-screenypos,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-screenypos+16,"red")
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-screenypos+16,"red")
   end 
    if rom.readbyte(TileStat+Tile16)==0xA0 or rom.readbyte(TileStat+Tile16)==0xA0 then
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-screenypos+16,"red")
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos,256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos+16,"red")
    gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-screenypos+16,256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-screenypos+16,"red")
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
     end 
   end 
  end
  
 ariel   = {memory.readbyte(0x0330)+256*memory.readbyte(0x0340)-screenxpos,memory.readbyte(0x0360)-240*yposadjust*memory.readbyte(0x0370)-screenypos,"red"}
 bubble1 = {memory.readbyte(0x0331)+256*memory.readbyte(0x0341)-screenxpos,memory.readbyte(0x0361)-240*yposadjust*memory.readbyte(0x0371)-screenypos,"red"}
 bubble2 = {memory.readbyte(0x0332)+256*memory.readbyte(0x0342)-screenxpos,memory.readbyte(0x0362)-240*yposadjust*memory.readbyte(0x0372)-screenypos,"red"}
 
 gui.box(ariel[1]-9,ariel[2]-8,ariel[1]+9,ariel[2]+8)
 gui.box(ariel[1]-1,ariel[2]-1,ariel[1]+1,ariel[2]+1,"black")
 --gui.text(ariel[1]+2,ariel[2]+2,memory.readbyte(0x0330)+256*memory.readbyte(0x0340)+screenxpos..","..memory.readbyte(0x0360)-240*memory.readbyte(0x0370))
 
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

gui.text(0,200,"Stage ".. memory.readbyte(0xE9)+1 ..", Room "..bit.band(memory.readbyte(0x50),0x0F)+1)
gui.text(0,208,"Room offset: " .. roomoffsetx .. "," .. roomoffsety)
gui.text(0,216,"Room position: " .. memory.readbyte(0x52)+1 .. "/" .. roomlength+1)
gui.text(0,224,"Orientation: " .. orienttext[(roomorient/0x40)+1])
end
emu.frameadvance()
end
