#!/bin/ruby

print "how many times? "
N=gets.chomp
print "step? "
S=gets.chomp
(1..N.to_i).step(S.to_i) {|i|
  # i not used
  puts "hello world"
}
