grades = Hash.new()

# the hash values are now Symbols
grades = { 90 => :A, 80 => :B, 70 => :C, 60 => :D, 0 => :F }
grades.each do |key, value|
  puts "#{key} mapped to #{value}"
end

score = gets.chomp
letter = nil # this variable will hold the Symbol letter grade
grades.each do |key, value|

if (score.to_i >= key) 
  letter = value
  break
end

end
puts "You earned an #{letter}!"

# Symbols are singletons so you can test them for equality

if (letter == :A)
  puts "You really did earn an A!"
else
  puts "Sorry Charlie, you didn't get an A..."
end