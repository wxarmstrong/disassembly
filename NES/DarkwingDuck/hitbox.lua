while true do

 if memory.readbyte(0xFD)%2==0 then
 screenxpos = memory.readbyte(0xFC)
 screenypos = memory.readbyte(0xFA)
	for i=0x600,0x67F,1 do
	
		curtile = bit.band(memory.readbyte(i),0x0F)
		xpos = (i-0x680)%16
		ypos = math.floor((i-0x600)/16)
		if curtile==03 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos)
		elseif curtile==01 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "green")
		elseif curtile==02 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "orange")
		elseif curtile==04 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "red")
		end
		
		curtile = bit.band(memory.readbyte(i),0xF0)/16
		xpos = (i-0x600)%16
		ypos = math.floor((i-0x600)/16)
		if curtile==03 then 
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos)
		elseif curtile==01 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "green")
		elseif curtile==02 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "orange")
		elseif curtile==04 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "red")
		end
	end
	
	for i=0x680,0x6FF,1 do
	
		curtile = bit.band(memory.readbyte(i),0x0F)
		xpos = 16+(i-0x680)%16
		ypos = math.floor((i-0x680)/16)
		if curtile==03 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos)
		elseif curtile==01 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "green")
		elseif curtile==02 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "orange")
		elseif curtile==04 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "red")
		end
		
		curtile = bit.band(memory.readbyte(i),0xF0)/16
		xpos = 16+(i-0x680)%16
		ypos = math.floor((i-0x680)/16)
		if curtile==03 then 
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos)
		elseif curtile==01 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "green")
		elseif curtile==02 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "orange")
		elseif curtile==04 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "red")
		end
	end
 else
 screenxpos = memory.readbyte(0xFC)
 screenypos = memory.readbyte(0xFA)
 
	for i=0x600,0x67F,1 do
	
		curtile = bit.band(memory.readbyte(i),0x0F)
		xpos = (i-0x680)%16+16
		ypos = math.floor((i-0x600)/16)
		if curtile==03 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos)
		elseif curtile==01 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "green")
		elseif curtile==02 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "orange")
		elseif curtile==04 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "red")
		end
		
		curtile = bit.band(memory.readbyte(i),0xF0)/16
		xpos = (i-0x600)%16+16
		ypos = math.floor((i-0x600)/16)
		if curtile==03 then 
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos)
		elseif curtile==01 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "green")
		elseif curtile==02 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "orange")
		elseif curtile==04 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "red")
		end
	end
	
	for i=0x680,0x6FF,1 do
	
		curtile = bit.band(memory.readbyte(i),0x0F)
		xpos = (i-0x680)%16
		ypos = math.floor((i-0x680)/16)
		if curtile==03 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos)
		elseif curtile==01 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "green")
		elseif curtile==02 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "orange")
		elseif curtile==04 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos,16*xpos+16-screenxpos,32*ypos+16-screenypos,"clear", "red")
		end
		
		curtile = bit.band(memory.readbyte(i),0xF0)/16
		xpos = (i-0x680)%16
		ypos = math.floor((i-0x680)/16)
		if curtile==03 then 
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos)
		elseif curtile==01 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "green")
		elseif curtile==02 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "orange")
		elseif curtile==04 then
		gui.rect(16*xpos-screenxpos,32*ypos-screenypos+16,16*xpos+16-screenxpos,32*ypos+32-screenypos,"clear", "red")

		end
	end
	
 end
 

 

		emu.frameadvance()
end