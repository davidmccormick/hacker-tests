#!/bin/ruby

=begin
You are given an array of n+2 elements. All elements of the array are in range 1 to n. And all elements occur once except two numbers which occur twice. Find the two repeating numbers. 

For example, array = {4, 2, 4, 5, 2, 3, 1} and n = 5

The above array has n + 2 = 7 elements with all elements occurring once except 2 and 4 which occur twice. So the output should be 4 2.

=end

def find2repeating(array)
  answer = {}
  array.each {|v|
    if answer[v].nil?  
      answer[v] = 1
    else
      answer[v] += 1
    end
  }
  answer.select{|k,v| v >= 2 }.keys
end

array=[4, 2, 4, 5, 2, 3, 1]
repeating=find2repeating(array)
puts "#{repeating.join(" ")}\n"

