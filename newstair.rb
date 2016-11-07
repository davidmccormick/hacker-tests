#!/bin/ruby

n = gets.strip.to_i
for i in (1..n) do
  spaces = " " * (n - i)
  steps = "#" * i
  puts spaces + steps
end
