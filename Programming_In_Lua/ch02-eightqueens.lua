--[[
  Classical Eight Queens Problem
   original code from page 14 of Programming Lua 4th edition
   
   The problem is how to find a version of the board where there are 8
   queens on an 8x8 chess board with none of them in check with each
   other. A queen is in 'check' when another queen is on anywhere on
   the same vertical, horizontal, or 2 diagonals from the square the
   queen is on.

--]]

-- Number of squares on the board
BOARD_SIZE=8

-- Check whether position (row,column) is free from attacks
function isplaceok(b_array, row, column)
   -- because we know we can have 1 queen per row, we only need to
   -- check if there is another queen on the same row.
   for i = 1, row-1 do -- for each queen already placed on the board
      if (b_array[i] == column) or             -- same column
	 (b_array[i] - i == (column - row)) or -- same diagonal
      (b_array[i] + i == (column + row)) then  -- same diagonal
	 return false -- there was a queen in an attack so place is bad
      end
   end
   return true -- this spot is ok
end

-- print the board
function printboard(b_array)
   for i = 1, BOARD_SIZE do -- for each row
      for j = 1, BOARD_SIZE do -- for each column
	 -- use io.write to put in the appropriate X or - per spot.
	 -- this uses a shorthand if/then logic
	 io.write(b_array[i] == j and "X" or "-", " ")
      end
      io.write("\n")
   end
   io.write("\n")
end

-- add a queen to the board
function addqueen(b_array, queen_num)
   if queen_num > BOARD_SIZE then -- all the queens we can place have been
      printboard(b_array)
   else -- to place the queen
      for column = 1 , BOARD_SIZE do
	 if isplaceok(b_array, queen_num, column) then
	    b_array[queen_num] = column -- place the nth queen at column
	    addqueen(b_array, (queen_num+1))
	 end
      end
   end
end

-- main
addqueen({},1)
