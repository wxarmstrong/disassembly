function breakTest()

	frame = emu.framecount()
	if frame >= 73900 then value = memory.readbyte(0x68)
	elseif frame >= 73724 then value = memory.readbyte(0x67)
	elseif frame >= 73202 then value = memory.readbyte(0x64)
	end
	
	if frame >= 73900 then
		emu.print(frame)
	end
	
end

memory.registerwrite(0x64, 0x1, breakTest)
memory.registerwrite(0x67, 0x1, breakTest)
memory.registerwrite(0x68, 0x1, breakTest)