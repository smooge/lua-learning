-- Using examples from chapter 3 as it does not have programs per se.

function ask_for_return()
   -- take any input and throw it away.
   print("Press enter to continue")
   io.read()
end

function test_num_types()
   print("== Print Number Types ==")
   Xint=3
   Xflt=3.0
   print(Xint.." is type "..type(Xint))
   print(Xint.." is math type "..math.type(Xint))
   print(Xflt.." is type "..type(Xflt))
   print(Xflt.." is math type "..math.type(Xflt))
   print(Xint.." == "..Xflt.." is "..tostring(Xint==Xflt))
   print("")
end

function test_hex_types()
   print("== Print Hex Types ==")
   Xint=0x1
   Xflt=0x1.0p0
   print(string.format("%x",Xint).." is type "..type(Xint))
   print(string.format("%x",Xint).." is math type "..math.type(Xint))
   print(string.format("%a",Xflt).." is type "..type(Xflt))
   print(string.format("%a",Xflt).." is math type "..math.type(Xflt))
   print(string.format("%x",Xint).." == "..string.format("%a",Xflt).." is "..tostring(Xint==Xflt))
   print("")
end

function test_simple_math()
   print("== Print Various Math Outcomes ==")
   A=23
   B=7
   X=23.0
   Y=7.0
   print("A = "..A..", B = "..B..", X = "..X..", Y = "..Y)
   print("A + B = "..(A+B))
   print("X + Y = "..(X+Y))
   print("A + Y = "..(A+Y))
   print("X + B = "..(X+B))
   print("")
   print("A / B = "..(A/B))
   print("X / Y = "..(X/Y))
   print("A / Y = "..(A/Y))
   print("X / B = "..(X/B))
   print("")
   print("A // B = "..(A//B))
   print("X // Y = "..(X//Y))
   print("A // Y = "..(A//Y))
   print("X // B = "..(X//B))
   print("")
end

function test_math_lib()
   print("Using the math.* lib")
   x=math.pi
   print("X=" .. math.pi)
   print("X%0.1 = ".. math.pi%0.1)
   print("X%0.01 = ".. math.pi%0.01)
   print("X%0.001 = ".. math.pi%0.001)
   print("math.sin(math.pi/2) = "..math.sin(math.pi/2))
   print("math.max(10.4,7,-3,20) = "..math.max(10.4,7,-3,20))
   print("math.huge = ".. math.huge)
   print("math.floor(3.3) = "..math.floor(3.3))
   print("math.floor(-3.3) = "..math.floor(-3.3))
   print("math.ceil(3.3) = "..math.ceil(3.3))
   print("math.ceil(-3.3) = "..math.ceil(-3.3))
   print("math.modf(3.3) = "..math.modf(3.3))
   print("math.modf(-3.3) = "..math.modf(-3.3))
end

function round1(x)
   local f = math.floor(x)
   if (x == f) then
      return f
   else
      return math.floor(x+0.5)
   end
end

function round2(x)
   -- unbiased rounding rounds to the nearest even integer.
   local f = math.floor(x)
   if (x == f) or (x%2.0 == 0.5) then
      return f
   else
      return math.floor(x+0.5)
   end
end

function test_round()
   print("Round1 2.5 == "..round1(2.5))
   print("Round1 3.5 == "..round1(3.5))
   print("Round1 -2.5 == ".. round1(-2.5))
   print("Round1 -1.5 == ".. round1(-1.5))
   print("Round2 2.5 == "..round2(2.5))
   print("Round2 3.5 == "..round2(3.5))
   print("Round2 -2.5 == ".. round2(-2.5))
   print("Round2 -1.5 == ".. round2(-1.5))
end

function test_limits()
   print("Math.maxinteger == "..math.maxinteger)
   print("Math.mininteger == "..math.mininteger)
   print("Math.maxinteger + 1 == "..(math.maxinteger+1))
   print("Math.mininteger - 1 == "..(math.mininteger-1))
   print("Math.maxinteger + 1.0 == "..(math.maxinteger+1.0))
   print("Math.mininteger - 1.0 == "..(math.mininteger-1.0))
end

function test_conversions()
   x=3
   y=3.0
   print(x.." + 0.0 =="..(x+0.0))
   print(y.." | 0 =="..(y|0)) -- this only works if y is even
   -- integer. crashes otherwise
   print(math.floor(3.2)|0)
end

test_num_types()
ask_for_return()
test_hex_types()
ask_for_return()
test_simple_math()
ask_for_return()
test_math_lib()
ask_for_return()
test_round()
ask_for_return()
test_limits()
ask_for_return()
test_conversions()
