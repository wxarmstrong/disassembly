RAM = {}
file = io.open("rngplan.txt","w")
io.output(file)

function advanceRNG(num)

--	for regY=12,0,-1 do
--		RAM[0x98+regY] = memory.readbyte(0x98+regY)
--	end

--	RAM[0x9D] = memory.readbyte(0x9D)

	for i=1,num,1 do
		RAM[0x9D] = bit.bor(RAM[0x9D],0x01)

		for regY=5,0,-1 do
			RAM[0x9F+regY] = 0
		end

		for regY=5,0,-1 do
			


			RAM[0x73] = memory.readbyte(0xFC76 + regY)
			RAM[0x6C] = 0x08
			
			while RAM[0x6C] > 0 do
			
				carry = 0;
				
				for regX = 5,0,-1 do
			
					if bit.band(RAM[0x9F+regX],0x80)>0 then
						nextCarry = 1;
					else
						nextCarry = 0;
					end
				
					RAM[0x9F+regX] = bit.band(2*RAM[0x9F+regX]+carry,0xFF)
			
					carry = nextCarry;
			
				end
			
				if bit.band(RAM[0x73],0x80)>0 then
					carry = 1
				else
					carry = 0
				end
				
				RAM[0x73] = bit.band(2*RAM[0x73],0xFF)
				
				if carry~=0 then
					
					carry=0
					
					for regX=5,0,-1 do
					
						
						RAM[0x9F+regX] = RAM[0x9F+regX] + RAM[0x98+regX] + carry
						
						if RAM[0x9F+regX] > 0xFF then
							RAM[0x9F+regX] = bit.band(RAM[0x9F+regX],0xFF)
							carry = 1
						else
							carry = 0
						end
					
					end


				
				end
				
				RAM[0x6C] = RAM[0x6C] - 1
				
			end
			
		end

		carry = 1

		for regX=5,0,-1 do

			regA = bit.bxor(RAM[0x9F+regX],0xFF) + carry
			
			if regA>0xFF then
				regA = bit.band(regA,0xFF)
				carry = 1
			else
				carry = 0
			end
			
			RAM[0x98+regX] = regA
			

		end
		
		RAM[0x67] = bit.band(RAM[0x98],0x7F)
		RAM[0x66] = RAM[0x99]
	
	end

	for regY=0,12,1 do
		thing = string.format("%x",RAM[0x98+regY])
		console.write(thing)
		file:write(thing)
	end	
			console.write("\n")
			file:write("\n")
	
	return 256*RAM[0x67]+RAM[0x66]
	
end

for count=0x0000, 0xFFFF do

	for regY=12,0,-1 do
		RAM[0x98+regY] = 0
	end

	RAM[0x9D] = 0
	
	RAM[0x98] = 0x05
	RAM[0x99] = 0x00
	RAM[0x9A] = bit.band(count,0x00FF)
	RAM[0x9B] = bit.band(count,0xFF00)
	
	file:write(string.format("%x",count) .. " ")
	
	advanceRNG(1)
	
end

file:close()