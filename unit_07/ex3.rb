# build some arrays to treat as sets

primeArray = Array[ 1, 3, 5, 7, 11, 13, 17, 19, 23 ]
evenArray = Array[]
evenArray << 2 << 4 << 6 << 8 << 10 << 12 << 14 << 16 << 18 << 20 << 22
oddArray = Array[]
oddArray << 1 << 3 << 5 << 7 << 9 << 11 << 13 << 15 << 17 << 19 << 21 << 23

puts "==============="

result1 = primeArray & evenArray  
# the resulting set here will be empty
puts result1

puts "==============="

result2 = primeArray | evenArray
# the resulting set: 1,3,5,7,13,17,19,23,2,4,6,8,10,12,14,16,18,20,22
puts result2

puts "==============="

result3 = oddArray - primeArray
# the resulting set: 9,15,21
puts result3

puts "==============="

if (result3.include?( 9 ))
  puts "result3 includes 9!"
end

if (!result3.include?( 5 ))
  puts "result3 does not include 5!"
end