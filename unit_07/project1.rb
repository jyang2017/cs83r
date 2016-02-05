=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: October 10, 2015
Purpose: Create a Ruby program which reads numbers, deposits them into an array
         and then calculates the arithmetic mean (otherwise known as
         the average), the median (that is, the number that splits the set of
         value in half with half being above and half being below the number),
         and the standard deviation (that is, the average of distance each number
         is from the mean then squared). 

Input: 	
		numbers                      - number of units enrolled

Output: average                      - arithmetic mean
        median                       - the median  
		standard_deviation           - the standard deviation
=end

STDOUT.sync = true

$sample = []    # keeps the numbers

# Helper method, which asks the user choice and returns corresponding character.
def menu

    menu = %w(N A M S C Q)    # array keeps allowed options
	
	choice = ""    # keeps the user choice
	
	loop do
	    print "[N]umbers [A]verage [M]edian [S]tandard Deviation [C]lear [Q]uit: "
        choice = gets.chomp    # get input
		if menu.include?(choice.upcase)
            break       # this will cause execution to exit the loop
        end	
	end
	
	return choice.upcase
end

# Helper method, which reads numbers and deposits them into an array.
def numbers
    int_array = []
    input = gets.chomp
	int_array = input.delete("^0-9 ").split(' ')
	int_array.map(&:to_i)
end

# Helper method, which calculates the arithmetic mean of the array elements.
def calculate_average array
	sum = 0
	array.each { |item| unless (item.nil?) then sum += item end }
	
	return average = sum.to_f / array.size
end

# Helper method, which calculates the median of the array elements.
def calculate_median array
    sorted = array.sort
    size = sorted.length
    return (sorted[(size - 1) / 2] + sorted[size / 2]) / 2.0
end

# Helper method, which calculates the standard deviation of the array elements.
def calculate_standart_deviation array
    mean = calculate_average array
	size = array.length
	sum = 0
	array.each { |item| unless (item.nil?) then sum += (item - mean)**2 end }
    return Math.sqrt(sum.to_f/(size))
end

# Main.
begin
    puts "\nSMC Math Calculator"
   
    loop do
	
	    input = menu
		
		case input
            when 'N'
			    # append the number array to the sample array.
                $sample = $sample + numbers
            when 'A'
			    if $sample.length != 0
				    puts "Average = %.3f" % (calculate_average $sample.dup)
				else
				    puts "Add [N]umbers first"
				end
            when 'M'                
                if $sample.length != 0
				    puts "Median = %.3f" % (calculate_median $sample.dup)
				else
				    puts "Add [N]umbers first"
				end
			when 'S'
			    if $sample.length != 0
				    puts "Standard Deviation = %.3f" % 
					                 (calculate_standart_deviation $sample.dup)
				else
				    puts "Add [N]umbers first"
				end
            when 'C'
                $sample = []    # clear the sample array
			when 'Q'            # this will cause execution to exit the loop
                break
        end		
    end    
    
end

