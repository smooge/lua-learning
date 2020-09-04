-- defines a recursive factorial function
function fact(n)
   if ( n == 0 ) then
      return 1
   else
      return (n * fact(n-1))
   end
end

-- main function
print("enter a number:")
a = io.read("*n") -- reads a number
print("the factorial of ", a, " is ", fact(a))
