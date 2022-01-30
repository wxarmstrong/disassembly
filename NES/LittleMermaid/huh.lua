while true do
 room       = bit.band(memory.readbyte(0x50),0x0F)
 roomorient = bit.band(memory.readbyte(0x50),0xF0)
 roomlength = memory.readbyte(0x51)
 
 roomlookup = memory.readbyte(0x70)+256*memory.readbyte(0x71)
 yposadjust = 1

 if roomorient == 0x40 then
  yposadjust = -1
 end
 
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
   if rom.readbyte(TileStat+Tile16)==0x83 or rom.readbyte(TileStat+Tile16)==0x80 then
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16,boxpos[1]-roomscrollx,boxpos[2],"red")
    gui.line(boxpos[1]-roomscrollx+16,boxpos[2],boxpos[1]-roomscrollx,boxpos[2],"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2]+16,boxpos[1]-roomscrollx+16,boxpos[2],"red")
   end 
    if rom.readbyte(TileStat+Tile16)==0xC3 or rom.readbyte(TileStat+Tile16)==0xC0 then
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16,boxpos[1]+16-roomscrollx,boxpos[2]+16,"red")
    gui.line(boxpos[1]-roomscrollx+16,boxpos[2]+16,boxpos[1]+16-roomscrollx,boxpos[2],"red")
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16,boxpos[1]-roomscrollx+16,boxpos[2],"red")
	end 
    if rom.readbyte(TileStat+Tile16)==0x63 or rom.readbyte(TileStat+Tile16)==0x60 then
	gui.line(boxpos[1]-roomscrollx,boxpos[2],boxpos[1]+16-roomscrollx,boxpos[2],"red")
	gui.line(boxpos[1]+16-roomscrollx,boxpos[2],boxpos[1]+16-roomscrollx,boxpos[2]+16,"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2],boxpos[1]+16-roomscrollx,boxpos[2]+16,"red")
   end 
    if rom.readbyte(TileStat+Tile16)==0xA3 or rom.readbyte(TileStat+Tile16)==0xA0 then
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
   if rom.readbyte(TileStat+Tile16)==0x83 or rom.readbyte(TileStat+Tile16)==0x80 then
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,"red")
    gui.line(boxpos[1]-roomscrollx+16,boxpos[2]-roomscrolly,boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]-roomscrollx+16,boxpos[2]-roomscrolly,"red")
   end 
    if rom.readbyte(TileStat+Tile16)==0xC3 or rom.readbyte(TileStat+Tile16)==0xC0 then
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]+16-roomscrolly,"red")
    gui.line(boxpos[1]-roomscrollx+16,boxpos[2]+16-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]-roomscrolly,"red")
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]-roomscrollx+16,boxpos[2]-roomscrolly,"red")
	end 
    if rom.readbyte(TileStat+Tile16)==0x63 or rom.readbyte(TileStat+Tile16)==0x60 then
	gui.line(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]-roomscrolly,"red")
	gui.line(boxpos[1]+16-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]+16-roomscrolly,"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]+16-roomscrolly,"red")
   end 
    if rom.readbyte(TileStat+Tile16)==0xA3 or rom.readbyte(TileStat+Tile16)==0xA0 then
	gui.line(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]+16-roomscrollx,boxpos[2]+16-roomscrolly,"red")
	gui.line(boxpos[1]-roomscrollx,boxpos[2]-roomscrolly,boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,"red")
    gui.line(boxpos[1]-roomscrollx,boxpos[2]+16-roomscrolly,boxpos[1]-roomscrollx+16,boxpos[2]+16-roomscrolly,"red")
   end 
   end
  end
  end
  end
  
 emu.frameadvance()
 gui.text(20,20,roomscrolly)
end 