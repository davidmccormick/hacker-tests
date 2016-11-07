#!/bin/ruby

time = gets.strip

ampm= time[-2..-1].downcase

(hour,min,sec) = time[0..time.length-3].split(":")
hour = hour.to_i

# edge cases for 12:00AM, 12:00PM, and 01:00PM etc..
if (ampm == "am") 
  hour = 0 if (hour == 12 && ampm == "am")
else
  hour += 12 if hour < 12
end

# format with extra 0 for less than 10
hour = hour > 10 ? hour.to_s : "0" + hour.to_s

print "#{hour}:#{min}:#{sec}\n"
