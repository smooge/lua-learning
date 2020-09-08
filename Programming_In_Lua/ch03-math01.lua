-- Using examples from chapter 3 as it does not have programs per se.

function print_num_types()
   Xint=3
   Xflt=3.0
   print(Xint.." is type "..type(Xint))
   print(Xint.." is math type "..math.type(Xint))
   print(Xflt.." is type "..type(Xflt))
   print(Xflt.." is math type "..math.type(Xflt))
   print(Xint.." == "..Xflt.." is "..tostring(Xint==Xflt))
   print("")
end

function print_hex_types()
   Xint=0x1
   Xflt=0x1.0p0
   print(string.format("%x",Xint).." is type "..type(Xint))
   print(string.format("%x",Xint).." is math type "..math.type(Xint))
   print(string.format("%a",Xflt).." is type "..type(Xflt))
   print(string.format("%a",Xflt).." is math type "..math.type(Xflt))
   print(string.format("%x",Xint).." == "..string.format("%a",Xflt).." is "..tostring(Xint==Xflt))
   print("")
end

function print_math()
   X=13
   Y=15.0
   print X+Y
end


print_num_types()
print_hex_types()
print_math()
