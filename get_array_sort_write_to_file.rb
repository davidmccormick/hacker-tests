#!/bin/ruby

# read array until empty
# sort the array
# print the result
# save to a file

array = []

print "array item: "
item = gets.chomp
until item.length == 0 do
  puts "you entered \"#{item}\""
  array.push(item)
  print "array item: "
  item=gets.chomp
end

array.sort!
puts array

write_file = false
print "file to write: "
file=gets.chomp
if File.exists?(file)
  print "#{file} already exists - are you sure? y/n :"
  answer=gets.chomp.downcase
  until answer =~ /^[yn]$/
    print "I need a y or an n: "
    answer=gets.chomp.downcase
  end
  if answer == 'y'
    write_file = true
  end
else
  write_file=true
end

if write_file
  File.write(file, array)
else
  puts "Skipping writing of file"
end
