#!/bin/ruby

a0,a1,a2 = gets.strip.split(' ')
a0 = a0.to_i
a1 = a1.to_i
a2 = a2.to_i
b0,b1,b2 = gets.strip.split(' ')
b0 = b0.to_i
b1 = b1.to_i
b2 = b2.to_i

ascore = 0
bscore = 0

ascore += a0 > b0 ? 1 : 0
bscore += a0 < b0 ? 1 : 0
ascore += a1 > b1 ? 1 : 0
bscore += a1 < b1 ? 1 : 0
ascore += a2 > b2 ? 1 : 0
bscore += a2 < b2 ? 1 : 0

print "#{ascore} #{bscore}\n"
