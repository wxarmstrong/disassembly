finished=0

E4=0xF1
E5=0x7C
E6=0x9E
E7=0x67

while finished==0 do
memory.writebyte(0xE4,E4)
memory.writebyte(0xE5,E5)
memory.writebyte(0xE6,E6)
memory.writebyte(0xE7,E7)
finished=1
end