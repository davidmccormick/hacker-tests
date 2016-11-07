#!/bin/ruby

sum = 0
ARGV.each {|arg|
   sum += arg.to_i
}

puts "Sum = #{sum}"
