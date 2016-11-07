#!/bin/ruby

# sort by key length


def sortbykeylength(hash) 
  hash.sort {|(k1,v1),(k2,v2)| k1.to_s.length <=> k2.to_s.length }  
end

myhash = { abc: 'hello', 'another_key' => 123, 4567 => 'third' }
sorted = Hash[sortbykeylength(myhash)]
print "#{sorted}\n"

