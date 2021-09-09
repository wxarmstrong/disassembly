io.output("Page2.txt")

finished=0

while finished==0 do
 for i=0x8000,0xBFF0,0x10 do
  io.write(string.format("%x",i))
 end 
finished=1
end