#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

sum = 0
arr.each{|x| sum += x}
puts sum
