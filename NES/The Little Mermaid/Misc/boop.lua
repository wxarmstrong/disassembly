height = {0x10, 0x0C, 0x14, 0x18, 0x0C, 0x10, 0x10, 0x18, 0x28, 0x20, 0x20, 0x08, 0x08, 0x08, 0x08, 0x08, 
          0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08, 0x08}
width  = {0x11, 0x0D, 0x15, 0x15, 0x15, 0x19, 0x21, 0x19, 0x41, 0x19, 0x11, 0x09, 0x09, 0x09, 0x09, 0x09,
          0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09, 0x09}
E4 = 0
E5 = 0
E6 = 0
E7 = 0
Oldstring = 0
NextE4 = 0
NextE5 = 0
NextE6 = 0
NextE7 = 0
timer1 = 0
timer2 = 0

while true do
 screenxpos = tonumber(memory.readbyte(0xFC))+256*tonumber(memory.readbyte(0xFD))
 screenypos = tonumber(memory.readbyte(0xFA))+256*tonumber(memory.readbyte(0xFB))
 heldobject = memory.readbyte(0x3A)
 
 for i = 3,15,1 do
  if memory.readbyte(0x300+i) >= 128 then
   if heldobject == i or memory.readbyte(0x310+i)==1 then 
   entityxpos = tonumber(memory.readbyte(0x0330+i))+256*tonumber(memory.readbyte(0x0340+i))
   entityypos = tonumber(memory.readbyte(0x0360+i))+256*tonumber(memory.readbyte(0x0370+i))
   gui.box(entityxpos-screenxpos-1, entityypos-screenypos-1, entityxpos-screenxpos+1, entityypos-screenypos+1, "black")
   gui.pixel(entityxpos-screenxpos, entityypos-screenypos,"green")
   else
   entityxpos = tonumber(memory.readbyte(0x0330+i))+256*tonumber(memory.readbyte(0x0340+i))
   entityypos = tonumber(memory.readbyte(0x0360+i))+256*tonumber(memory.readbyte(0x0370+i))
   boxtype = bit.band(tonumber(memory.readbyte(0x03C0+i)),0x1F)
   gui.box(entityxpos-screenxpos-width[boxtype+1], entityypos-screenypos-height[boxtype+1], entityxpos-screenxpos+width[boxtype+1], entityypos-screenypos+height[boxtype+1])
   end 
   gui.text(entityxpos-screenxpos,entityypos-screenypos,memory.readbyte(0x0460+i))
   end
 end
  
 ariel = {tonumber(memory.readbyte(0x0330))+256*tonumber(memory.readbyte(0x0340))-screenxpos,tonumber(memory.readbyte(0x0360))+256*tonumber(memory.readbyte(0x0370))-screenypos,"red"}
 bubble1 = {tonumber(memory.readbyte(0x0331))+256*tonumber(memory.readbyte(0x0341))-screenxpos,tonumber(memory.readbyte(0x0361))+256*tonumber(memory.readbyte(0x0371))-screenypos,"green"}
 bubble2 = {tonumber(memory.readbyte(0x0332))+256*tonumber(memory.readbyte(0x0342))-screenxpos,tonumber(memory.readbyte(0x0362))+256*tonumber(memory.readbyte(0x0372))-screenypos,"green"}
 
 gui.box(ariel[1]-1,ariel[2]-1,ariel[1]+1,ariel[2]+1,"black")
 
 if memory.readbyte(0x301) >= 128 then
 gui.box(bubble1[1]-1,bubble1[2]-1,bubble1[1]+1,bubble1[2]+1,"black") end
 if memory.readbyte(0x302) >= 128 then
 gui.box(bubble2[1]-1,bubble2[2]-1,bubble2[1]+1,bubble2[2]+1,"black") end
 
 gui.pixel(ariel[1],ariel[2],ariel[3])
 
 if memory.readbyte(0x301) >= 128 then
 gui.pixel(bubble1[1],bubble1[2],bubble1[3]) end
 if memory.readbyte(0x302) >= 128 then
 gui.pixel(bubble2[1],bubble2[2],bubble2[3]) end
 
 Oldstring = string.format(E4..E5..E6..E7)
 
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
 
 if E4..E5..E6..E7 ~= NextE4..NextE5..NextE6..NextE7 and E4..E5..E6..E7 ~= Oldstring then
 timer1=10 end
 
 if E4..E5..E6..E7 == Oldstring then
timer2=10 end
 
if timer1 ~= 0 then
gui.text(3,50,"RNG altered!")
timer1 = timer1-1 end 

if timer2 ~= 0 then
gui.text(3,70,"Transition/lag frame detected!")
timer2 = timer2-1 end 
 
 fib = 0
 
 if bit.bxor(bit.band(memory.readbyte(0xE4),0x02),bit.band(memory.readbyte(0xE5),0x02)) ~= 0 then
  fib = 1 end
  
 carry1 = 0
 carry2 = 0
 carry3 = 0
 
 if bit.band(memory.readbyte(0xE4),0x01) == 1 then
 carry1 = 1 end
 if bit.band(memory.readbyte(0xE5),0x01) == 1 then
 carry2 = 1 end
 if bit.band(memory.readbyte(0xE6),0x01) == 1 then
 carry3 = 1 end
 
 NextE4 = string.format("%x",128*fib     + bit.rshift(memory.readbyte(0xE4),1))
 if string.len(NextE4)==1 then
 NextE4 = "0" .. NextE4 end
  
 NextE5 = string.format("%x",128*carry1 + bit.rshift(memory.readbyte(0xE5),1))
 if string.len(NextE5)==1 then
 NextE5 = "0" .. NextE5 end
  
 NextE6 = string.format("%x",128*carry2 + bit.rshift(memory.readbyte(0xE6),1))
 if string.len(NextE6)==1 then
 NextE6 = "0" .. NextE6 end

 NextE7 = string.format("%x",128*carry3 + bit.rshift(memory.readbyte(0xE7),1))
 if string.len(NextE7)==1 then
 NextE7 = "0" .. NextE7 end  
  
 gui.text(3,30,NextE4 .. " " .. NextE5 .. " " .. NextE6 .. " " .. NextE7)
  
 emu.frameadvance()
end