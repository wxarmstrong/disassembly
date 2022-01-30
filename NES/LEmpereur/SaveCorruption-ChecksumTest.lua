finished = 0

while finished == 0 do
 memory.usememorydomain("System Bus")
 sum = 0
 
 for i=0x6004,0x6A82,1 do
  sum = sum + memory.readbyte(i)
 end  
 
 memory.usememorydomain("Battery RAM")
 
 for i=0x0A83,0x167E,1 do
  sum = sum + memory.readbyte(i)
 end   
 
 sum = bit.band(sum,0xFFFF)

 checksum = bit.band((memory.readbyte(0x167F)+256*memory.readbyte(0x1680)),0xFFFF)
 
 console.write("Sum: " .. sum .. " & checksum:" .. checksum .. " ")
 finished = 1
end 