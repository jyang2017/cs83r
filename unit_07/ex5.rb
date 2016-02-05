# code that counts nil elements in the array

intArray = [1,2,3,4,5] # re-build the array
intArray[ 0 ] = 10 # assign into the array
intArray[ 9 ] = 10 # will auto expand with nil elements

# count nil elements

counter = 0
intArray.each do |item|

 if (item.nil?)
   counter = counter + 1
 end

end

puts "array has #{counter} nil elements in it"