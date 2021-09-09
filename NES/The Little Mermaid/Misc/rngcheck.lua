function advanceRNG(num)
 for i=1,num,1 do
  carry0=0
   if bit.bxor(bit.band(E4,0x02),bit.band(E5,0x02)) ~= 0 then
  carry0=1
  end
 end
end 