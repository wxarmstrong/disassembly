while true do
 for i = 0,15,1 do
 screenxpos = tonumber(memory.readbyte(0xFC))+256*tonumber(memory.readbyte(0xFD))
 screenypos = 256*tonumber(memory.readbyte(0xFB))-tonumber(memory.readbyte(0xFA))
 entityxpos = tonumber(memory.readbyte(0x0330+i))+256*tonumber(memory.readbyte(0x0340+i))
 entityypos = tonumber(memory.readbyte(0x0360+i))+256*tonumber(memory.readbyte(0x0370+i))
 gui.text(entityxpos-screenxpos,entityypos-screenypos,string.format(entityxpos))
 end
 emu.frameadvance()
end