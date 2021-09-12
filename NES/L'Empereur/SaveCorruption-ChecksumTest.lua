TARGET = 0x61D6 --Ney.Next_Officer

memory.usememorydomain("System Bus")
sum = 0
 
for i=0x6004,TARGET,1 do
 sum = sum + memory.readbyte(i)
end  
 
memory.usememorydomain("Battery RAM")
 
for i=TARGET-0x6000+1,0x167E,1 do
 sum = sum + memory.readbyte(i)
end   
 
sum = bit.band(sum,0xFFFF)

checksum = bit.band((memory.readbyte(0x167F)+256*memory.readbyte(0x1680)),0xFFFF)
 
console.write("Sum: " .. sum .. " & checksum:" .. checksum .. " ")

