# NOTE: %w[ ] syntax only works for arrays made up of a single word....
stringArray = %w[ super cali fragi listic expi ali do cious ]

puts stringArray

# access a single item - all these lines access the same element
superString = stringArray[ 0 ]
puts superString
superString = stringArray[ -stringArray.size ] # counts from the back
puts superString
superString = stringArray.first
puts superString

i = 0

stringArray.size.times do

  stringArray[i].upcase! # all array items will be in UPPERCASE
  i = i + 1

end

puts stringArray

stringArray.clear

# kinda painful without the %w syntax...
stringArray = Array[ "super", "cali", "fragi", "listic", "expi", "ali", "do", "cious" ]

puts stringArray