while true do
 E4 = string.format("%x",memory.readbyte(0xE4))
 if string.len(E4)==1 then
  E4 = "0" .. E4
 end
 E5 = string.format("%x",memory.readbyte(0xE5))
  if string.len(E5)==1 then
  E5 = "0" .. E5
 end
 E6 = string.format("%x",memory.readbyte(0xE6))
  if string.len(E6)==1 then
  E6 = "0" .. E6
 end
 E7 = string.format("%x",memory.readbyte(0xE7))
  if string.len(E7)==1 then
  E7 = "0" .. E7
 end
 gui.text(3,10,E4 .. " " .. E5 .. " " .. E6 .. " " .. E7)
 emu.frameadvance()
end