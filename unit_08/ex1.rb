grades = Hash.new()

grades = { 90 => "A", 80 => "B", 70 => "C", 60 => "D", 0 => "F" }
grades.each do |key, value|
  puts "#{key} mapped to #{value}"
end

score = gets.chomp
letter = ""
grades.each do |key, value|

if (score.to_i >= key) 
  letter = value
  break
end

end
puts "You earned an #{letter}!"