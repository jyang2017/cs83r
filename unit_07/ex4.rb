# code that counts nil elements in the array

intArray = [1,2,3,4,5] # re-build the array
intArray[ 0 ] = 10 # assign into the array
intArray[ 9 ] = 10 # will auto expand with nil elements

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