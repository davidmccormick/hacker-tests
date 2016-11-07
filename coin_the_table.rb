#!/bin/ruby

def find_goal(board,n,m)
  # find the goal
  for r in (0..n-1)
    for c in (0..m-1)
      if (board[r][c] == "*")
        return r, c
      end
    end
  end
  raise "Sorry, no goal found on board"
end

def distance_from_goal(x,y,gx,gy)
  # distance is abs diff x + abs diff y
  return (x - gx).abs + (y - gy).abs
end

def follow_step(b, y, x)
  #puts "considering next move from y #{y}, x #{x} which is a #{b[y][x]}"
  case b[y][x]
  when "U"
    #puts "move up so y-1"
    return y - 1, x
  when "D"
    #puts "move down so y+1"
    return y + 1, x
  when "L"
    #puts "move left so x-1"
    return y, x - 1
  when "R"
    #puts "move right so x+1"
    return y, x + 1
  when "*"
    #puts "stay where we are - found it"
    return y, x
  end
end

def path_ok?(board,x,y,steps)
  for i in (0..steps-1)  
    y, x = follow_step(board,y,x) 
  end
  return board[y][x] == "*"
end

# Read vars and board
(n,m,k) = gets.strip.split(' ').map(&:to_i)

# set up board....
board = Array.new(n,m)
for row in (0..n-1)
   board[row] = gets.chomp.chars
end

# print board
#for row in (0..n-1)
#  print "#{board[row]}\n"
#end


# start at top left
xcord = 0
ycord = 0

gy, gx = find_goal(board,n,m)
#puts "Goal at #{gy}, #{gx}"

# work out impossible fist
# distance how far away = diff y + diff x
dist = distance_from_goal(xcord,ycord,gx,gy)
#puts "#{dist} steps from the goal"

#exit if there are more steps than moves
if dist > k
  puts "-1"
  exit 0
end

# simple case no changes required..
if path_ok?(board,xcord,ycord,k)
  puts "0"
else
  puts "Path not ok"
end

