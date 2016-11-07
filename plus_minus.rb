#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

neg, pos, zero = 0,0,0

arr.each{|x| 
  neg += 1 if x < 0
  pos += 1 if x > 0
  zero += 1 if x == 0
}

printf "%.6f\n", pos.to_f / n.to_f
printf "%.6f\n", neg.to_f / n.to_f
printf "%.6f\n", zero.to_f / n.to_f
