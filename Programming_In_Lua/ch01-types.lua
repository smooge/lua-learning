-- A simple program to show the different types in Lua
-- We begin by setting the built in types to a variable.

none = nil                -- nil or null type
bool = true               -- boolean
num = 10.4 * 3 + 7        -- number
str = "Hello World"       -- string


print("The variable none is ",none," and of type ",type(none))
print("The variable bool is ",bool," and of type ",type(bool))
print("The variable num is ",num," and of type ", type(num))
print("The variable str is ",str," and of type ", type(str))
print("")
print("The library io.stdin is of type ", type(io.stdin))
print("The function print() is of type ", type(print))
print("The function type is of type ", type(type))
print("The {} is of type ", type({}))
print("They type(X)) is of type", type(type(X)))

x = true
y = true
z = false

u=(x and y and (not z)) or ((not y) and x)
v=(x and y and not z) or (not y and x)
w=x and y and not z or not y and x
print(u)
print(v)
print(w)
u=(x and y and (not z))
v=(x and y and not z)
w=x and y and not z
print(u)
print(v)
print(w)
