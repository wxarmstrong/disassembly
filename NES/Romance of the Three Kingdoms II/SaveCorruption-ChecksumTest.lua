TARGET = 0x6697

memory.usememorydomain("System Bus")
sum = 0
 
for i=0x6004,TARGET,1 do
 sum = sum + memory.readbyte(i)
end  
 
memory.usememorydomain("Battery RAM")
 
for i=TARGET+1,0x7851,1 do
 sum = sum + memory.readbyte(i)
end   
 
sum = bit.band(sum,0xFFFF)

checksum = bit.band((memory.readbyte(0x7852)+256*memory.readbyte(0x7853)),0xFFFF)
 
console.write("Sum: " .. sum .. " & checksum:" .. checksum .. " ")

