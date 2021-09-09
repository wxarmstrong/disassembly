branches={branch1,branch2,branch3,branch4,branch5,branch6}

function branch1()
 emu.print("Branch 1")
 advanceRNG(1251)
 printRNG("Fight ends @ ")
 Stage2()
 finished=1
end

function branch4()
 emu.print("Branch 4")
 advanceRNG(160)
 savefork()
 for i=0,31,1 do
  loadfork()
  advanceRNG(i)
  E5=bit.band(E4+E5,0xFF)
  if bit.band(E5,0x01)==0x01 then
   advanceRNG(1)
   printRNG("Success! ..i.." frame delay: ")
   advanceRNG(1091)
   table.insert(forkframe,i)
   savefork()
   printRNG("Fight ends @ ")
   Stage2()
   table.remove(forkframe)
   returnfork()
  end 
 end
 returnfork()
end

while finished==0 do
loadfork()
branch1()

loadfork()
branch2()

loadfork()
branch3()

loadfork()
branch4()

loadfork()
branch5()

loadfork()
branch6()

finished=1
end