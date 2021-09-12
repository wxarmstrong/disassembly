timer1=0
timer2=0
nextstring=0

for i=4,7,1 do
_G["E"..i]=0
_G["NextE"..i]=0
end 

function getRom(page,addr)
	return page*0x4000+addr-0x7FF0
end

while true do
 

	scrollX = memory.readbyte(0xFC)+256*memory.readbyte(0xF9)
	scrollY = memory.readbyte(0xFA)+240*memory.readbyte(0xFB)

	room_width = memory.readbyte(0x28)+1
	room_height = memory.readbyte(0x29)+1
	
	--pyth1=memory.readbyte(0x314) -- MAX SUBPIX
	--pyth1=256*(memory.readbyte(0x0328)+256*memory.readbyte(0x033C))+memory.readbyte(0x314) -- PRIORITIZE RIGHT
	--pyth1=room_width*256*256-(256*(memory.readbyte(0x0328)+256*memory.readbyte(0x033C))+memory.readbyte(0x314)) -- PRIORITIZE LEFT
	pyth1=0 -- IGNORE HORIZ

	--pyth2=255-memory.readbyte(0x350) -- MAX SUBPIX
	--pyth2=256*(memory.readbyte(0x0364)+256*memory.readbyte(0x0378))+memory.readbyte(0x350) -- PRIORITIZE BOTTOM
	pyth2=room_height*256*256-(256*(memory.readbyte(0x0364)+256*memory.readbyte(0x0378))+memory.readbyte(0x350)) -- PRIORITIZE TOP

	--pyth2=0 -- IGNORE VERT

	

	
	room_map = memory.readbyte(0x5E)+256*memory.readbyte(0x5F)
	screen_data = memory.readbyte(0x50)+256*memory.readbyte(0x51)
	
	structure_data = memory.readbyte(0x52)+256*memory.readbyte(0x53)
	meta_attr = memory.readbyte(0x5C)+256*memory.readbyte(0x5D)

	screenScrollNumX = memory.readbyte(0xF9)
	screenScrollNumY = memory.readbyte(0xFB)
	
	for i=0x00,0x13,1 do
		if memory.readbyte(0x0300+i)~=0 then
			objXpos = memory.readbyte(0x0328+i)+256*memory.readbyte(0x033C+i)
			objYpos = memory.readbyte(0x0364+i)+240*memory.readbyte(0x0378+i)
			relXpos = objXpos-scrollX
			relYpos = objYpos-scrollY
			objHitboxType = bit.band(memory.readbyte(0x03DC+i),0x3F)
			if i==0 then
				gui.box(relXpos-1,relYpos-1,relXpos+1,relYpos+1,"white")
				gui.pixel(relXpos,relYpos,"red")
			elseif i<4 then
				hitboxWidth = memory.readbyte(0xF463 + objHitboxType)
				hitboxHeight = memory.readbyte(0xF44E + objHitboxType)
				gui.box(relXpos-hitboxWidth, relYpos-hitboxHeight, relXpos+hitboxWidth, relYpos+hitboxHeight,"clear","orange")
			elseif memory.readbyte(0x03DC+i)>=0x80 then
			--	emu.print("Object Slot "..i..": ID#"..string.format("%x",memory.readbyte(0x0300+i)))
				HP = memory.readbyte(0x418+i)
				hitboxWidth = memory.readbyte(0xF463 + objHitboxType)
				hitboxHeight = memory.readbyte(0xF44E + objHitboxType)
				gui.box(relXpos-hitboxWidth, relYpos-hitboxHeight, relXpos+hitboxWidth, relYpos+hitboxHeight,"clear","white")
				gui.text(relXpos-2,relYpos,string.format("%x",memory.readbyte(0x0300+i)))
				if bit.band(memory.readbyte(0x03DC+i),0x40)~=0 then
					HP = memory.readbyte(0x418+i)
					gui.text(relXpos-12, relYpos+8,"HP: " .. HP)
					gui.box(relXpos-1,relYpos-1,relXpos+1,relYpos+1,"white")
					gui.pixel(relXpos,relYpos,"red")
					if memory.readbyte(0x300+i)==0x10 then
						if memory.readbyte(0x440+i)==0 then
							hitboxWidth = 0x60
							hitboxHeight= 0x20
							gui.box(relXpos-hitboxWidth, relYpos-hitboxHeight, relXpos+hitboxWidth, relYpos+hitboxHeight,"clear","yellow")
						end
					end
				end
			elseif 
			memory.readbyte(0x0300+i)==0x07 or 
			memory.readbyte(0x0300+i)==0x55 or memory.readbyte(0x0300+i)==0x56 or memory.readbyte(0x0300+i)==0x58 or 
			memory.readbyte(0x0300+i)==0x5A or 
			memory.readbyte(0x0300+i)==0x6D then
				hitboxWidth = memory.readbyte(0xF463 + objHitboxType)
				hitboxHeight = memory.readbyte(0xF44E + objHitboxType)
				gui.box(relXpos-hitboxWidth, relYpos-hitboxHeight, relXpos+hitboxWidth, relYpos+hitboxHeight,"clear","green")				
					
			elseif memory.readbyte(0x300+i)==0x14 then
				hitboxWidth = memory.readbyte(0x42C+i)
				hitboxHeight = 256*256
				gui.box(relXpos-hitboxWidth, relYpos-hitboxHeight, relXpos+hitboxWidth, relYpos+hitboxHeight,"clear","yellow")	
				gui.text(relXpos-10,relYpos,"Range: " .. memory.readbyte(0x42C+i))
			
			elseif memory.readbyte(0x300+i)==0x12 then
				hitboxWidth = 0x50
				hitboxHeight = 0x50
			FBobjXpos = memory.readbyte(0x0328)+256*memory.readbyte(0x033C)
			FBobjYpos = memory.readbyte(0x0364)+240*memory.readbyte(0x0378)
			FBrelXpos = FBobjXpos-scrollX
			FBrelYpos = FBobjYpos-scrollY
				gui.box(FBrelXpos-hitboxWidth, FBrelYpos-hitboxHeight, FBrelXpos+hitboxWidth, FBrelYpos+hitboxHeight,"clear","yellow")	
			gui.box(relXpos-1,relYpos-1,relXpos+1,relYpos+1,"white")
			gui.pixel(relXpos,relYpos,"red")
			end

		end
	end
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
 timer2=5 end
 
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
gui.text(0,9,math.sqrt(pyth1*pyth1+pyth2*pyth2)) -- 
	emu.frameadvance()
	
end