#!/bin/ruby

n = gets.strip.to_i
a = Array.new(n)
for a_i in (0..n-1)
    a_t = gets.strip
    a[a_i] = a_t.split(' ').map(&:to_i)
end

psum = 0
for row in (0..n-1)
  psum += a[row][row]
end

ssum = 0
for row in (0..n-1)
  r = a[row]
  val = r[-(row+1)] 
  ssum += val
end

puts (psum - ssum).abs
  


