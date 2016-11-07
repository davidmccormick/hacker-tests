#!/bin/ruby

print "how many times? "
N=gets.chomp
print "step? "
S=gets.chomp
for i in (1..N.to_i).step(S.to_i) do
  puts "hello world"
end
