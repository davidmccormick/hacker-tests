#!/bin/ruby

def StairCase(n)
  (1..n).each do |iter|
    spaces = n - iter
    puts " " * spaces + "#" * iter
  end
end

StairCase(6)
