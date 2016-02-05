intArray = Array[1, 2, 3, 4, 5 ] # build an array
puts intArray # by default, prints one item per line

if (intArray.empty?)
  puts "array is now empty"
else
  puts "array has #{intArray.size} items in it"
end

# pull everything out of the array...

intArray.delete( 3 )
intArray.delete( 4 )
intArray.delete( 5 )
intArray.delete( intArray.first )
intArray.delete( intArray.last )

if (intArray.empty?)
  puts "array is now empty"
else
  puts "array has #{intArray.size} items in it"
end

intArray = [1,2,3,4,5] # re-build the array
intArray[ 0 ] = 10 # assign into the array
intArray[ 9 ] = 10 # will auto expand with nil elements

puts intArray

if (intArray.empty?)
  puts "array is now empty"
else
  puts "array has #{intArray.size} items in it"
end

# count nil elements

i = 0
counter = 0
intArray.size.times do

 if (intArray[i].nil?)
   counter = counter + 1
 end
 i = i + 1

end

puts "array has #{counter} nil elements in it"

intArray = intArray.uniq # removes all the duplicates
puts "now all duplicates have been pulled out"

puts intArray

if (intArray.empty?)
 puts "array is now empty"
else
 puts "array has #{intArray.size} items in it"
end

i = 0
counter = 0
intArray.size.times do

 if (intArray[i].nil?)
     counter = counter + 1
 end
 i = i + 1

end

puts "array has #{counter} nil elements in it"

intArray = intArray.uniq # removes all the duplicates

puts intArray
