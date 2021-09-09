height = {16,12,20,24,12,16,16,24,40,32,32,08,08,08,08,08,
          08,08,08,08,08,08,08,08,08,08,08,08,08,08,08,08}
width  = {17,13,21,21,21,25,33,25,65,25,17,09,09,09,09,09,
          09,09,09,09,09,09,09,09,09,09,09,09,09,09,09,09}

while true do
 for i = 0,15,1 do
 boxtype = tonumber(bit.band(memory.readbyte(0x03C0+i),0x1F))
 xpos = tonumber(memory.readbyte(0x0330+i))
 ypos = tonumber(memory.readbyte(0x0360+i))
 gui.drawbox(width[boxtype],height[boxtype],width[boxtype],ypos+height[boxtype])
 end
 emu.frameadvance()
end