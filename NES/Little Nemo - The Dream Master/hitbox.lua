while true do
	
	--pyth1=memory.readbyte(0x4E0) -- MAX SUBPIX
	pyth1=256*(memory.readbyte(0x04D0)+256*memory.readbyte(0x04C0))+memory.readbyte(0x4E0) -- PRIORITIZE RIGHT
	--pyth1=0 -- IGNORE HORIZ

	--pyth2=255-memory.readbyte(0x510) -- MAX SUBPIX
	pyth2=256*(memory.readbyte(0x0500)+256*memory.readbyte(0x04F0))+memory.readbyte(0x510) -- PRIORITIZE BOTTOM
	
	--pyth2=0 -- IGNORE VERT

	gui.text(0,9,math.sqrt(pyth1*pyth1+pyth2*pyth2))
	emu.frameadvance()
	
end