=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: September 26, 2015
Purpose: Produce a number table as described here. This table should be built
         from a single integer value provided by the user. The program will
         display a square 4x4 of various numbers, starting with the value
         provided by the user.  The entered number should appear in an X like
         pattern across the table.  Filling the rest of the square, each
         successive filler number printed will be one less than the filler
         number previously printed.
Input: user_input A single integer value provided by the user.
Output: Outputs a number table as described above (see purpose).
=end

print "\nGimme a starting value: "
user_input = gets.chomp
filler_number = user_input.to_i

counter = 0
until counter > 15

    if (counter != 0 && counter % 4 == 0)
        puts
    end

    if (counter % 3 == 0)
        print "%2s " % user_input
    elsif (counter % 5 == 0)
        print "%2s " % user_input  
    else
        print "%2s " % filler_number -= 1
    end
	
    counter += 1
end

puts