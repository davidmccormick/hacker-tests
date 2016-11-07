#!/bin/ruby

# Write code to check a String is palindrome or not?
# reverse is equal to its forward
def pallindrome?(s)
  return s == s.reverse
end

puts pallindrome?("abba")
puts pallindrome?("David McCormick")

# 2) Write a method which will remove any given character from a String?

def remove_char(s, c)
  s.chars.select{|v| v != c}.join
end

puts remove_char("Dave",'a')
puts remove_char("abba",'b')
puts remove_char("abba",'e')

# 3) Print all permutation of String both iterative and Recursive way?


def perm_recur(ans="",s)
  if s.length == 0
    return
  end

  if s.length == 1
    puts ans + s
    return
  end
 
  if s.length == 2
    puts ans + s[0] + s[1] 
    puts ans + s[1] + s[0]
    return
  end

  (0..s.size-1).each do |l|
    new = s.chars.rotate(l).join('')
    element = new[0] 
    rest = new[1..new.size-1]
    perm_recur(ans + element, rest)
  end
end


def perm arr, i=0
  return puts arr if i == arr.size
  (i..arr.size-1).each do |j|
    arr[i], arr[j] = arr[j], arr[i]
    perm arr, i+1
    arr[i], arr[j] = arr[j], arr[i]
  end
end

#perm_recur("")
#perm_recur("A")
#perm_recur("AB")
perm_recur("MCCCOX")
#perm("MCO")
#perm("MCDO")
#puts
