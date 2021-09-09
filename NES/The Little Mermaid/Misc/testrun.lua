


tilexpos=256*math.floor(i/64)+i%8
tileypos=



for i=0,64*(roomlength+1),1 do 
  ScreenNum=math.floor(i/64)
  Tile32=rom.readbyte(64*roomlengthsum+memory.readbyte(0x60)+256*memory.readbyte(0x61)-0x3FF0+i)
  posy=math.floor((i-64*ScreenNum)/8)
  posx=i%8
  for i=0,3,1 do
   Tile16=rom.readbyte(0x510+((memory.readbyte(0x62)+256*memory.readbyte(0x63))-0x8500)+4*Tile32+i)
   subposy=math.floor(i/2)
   subposx=i%2
   xpos = memory.readbyte(0xFC)+256*memory.readbyte(0xFD)
   ypos = memory.readbyte(0xFA)+240*memory.readbyte(0xFB)
   boxpos={32*posx+16*subposx,32*posy+16*subposy,32*posx+16*subposx+16,32*posy+16*subposy+16}
   TileStat=(0x410+((memory.readbyte(0x6C)+256*memory.readbyte(0x6D))-0x8400))
   if bit.band(rom.readbyte(TileStat+Tile16),0x10)~=0 then
    gui.box(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos,256*ScreenNum+boxpos[3]-xpos,boxpos[4]-ypos,50,"red")
   end 
   
   if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0x80 then
    gui.line(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos+16,256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos,"red")
    gui.line(256*ScreenNum+boxpos[1]-xpos+16,boxpos[2]-ypos,256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos,"red")
	gui.line(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos+16,256*ScreenNum+boxpos[1]-xpos+16,boxpos[2]-ypos,"red")
   end
   
   if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0xC0 then
    gui.line(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos+16,256*ScreenNum+boxpos[1]+16-xpos,boxpos[2]-ypos+16,"red")
    gui.line(256*ScreenNum+boxpos[1]-xpos+16,boxpos[2]-ypos+16,256*ScreenNum+boxpos[1]+16-xpos,boxpos[2]-ypos,"red")
    gui.line(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos+16,256*ScreenNum+boxpos[1]-xpos+16,boxpos[2]-ypos,"red")
   end 
	
   if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0x60 then
	gui.line(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos,256*ScreenNum+boxpos[1]+16-xpos,boxpos[2]-ypos,"red")
	gui.line(256*ScreenNum+boxpos[1]+16-xpos,boxpos[2]-ypos,256*ScreenNum+boxpos[1]+16-xpos,boxpos[2]-ypos+16,"red")
	gui.line(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos,256*ScreenNum+boxpos[1]+16-xpos,boxpos[2]-ypos+16,"red")
   end 
   
   if bit.band(rom.readbyte(TileStat+Tile16),0xF0)==0xA0 then
	gui.line(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos,256*ScreenNum+boxpos[1]+16-xpos,boxpos[2]-ypos+16,"red")
	gui.line(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos,256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos+16,"red")
    gui.line(256*ScreenNum+boxpos[1]-xpos,boxpos[2]-ypos+16,256*ScreenNum+boxpos[1]-xpos+16,boxpos[2]-ypos+16,"red")
   end 
   
  end
 end