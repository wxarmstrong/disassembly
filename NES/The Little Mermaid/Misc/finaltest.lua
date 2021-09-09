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
  roomscrolly = memory.readbyte(0xFA)-240*yposadjust*memory.readbyte(0xFB)
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
  
  gui.text(0,8,"Screen position: " .. screenxpos .. "," .. roomscrolly)
  
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
    gui.box(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly,256*ScreenNum+boxpos[3]-screenxpos,boxpos[4]-roomscrolly,50,"red")
   end 
   if rom.readbyte(TileStat+Tile16)==0x83 or rom.readbyte(TileStat+Tile16)==0x80 then
    gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly+16,256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly,"red")
    gui.line(256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-roomscrolly,256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly,"red")
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly+16,256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-roomscrolly,"red")
   end 
    if rom.readbyte(TileStat+Tile16)==0xC3 or rom.readbyte(TileStat+Tile16)==0xC0 then
    gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly+16,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-roomscrolly+16,"red")
    gui.line(256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-roomscrolly+16,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-roomscrolly,"red")
    gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly+16,256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-roomscrolly,"red")
	end 
    if rom.readbyte(TileStat+Tile16)==0x63 or rom.readbyte(TileStat+Tile16)==0x60 then
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-roomscrolly,"red")
	gui.line(256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-roomscrolly,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-roomscrolly+16,"red")
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-roomscrolly+16,"red")
   end 
    if rom.readbyte(TileStat+Tile16)==0xA0 or rom.readbyte(TileStat+Tile16)==0xA0 then
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly,256*ScreenNum+boxpos[1]+16-screenxpos,boxpos[2]-roomscrolly+16,"red")
	gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly,256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly+16,"red")
    gui.line(256*ScreenNum+boxpos[1]-screenxpos,boxpos[2]-roomscrolly+16,256*ScreenNum+boxpos[1]-screenxpos+16,boxpos[2]-roomscrolly+16,"red")
   end 
   end
 end
end 