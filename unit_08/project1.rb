=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: October 9, 2015
Purpose: Create a Ruby program which reads a string of information and uses
         a Hash to keep track of letter frequencies and then displays
         a Histogram using this frequency information.

Input: 	
		input                        - a string of information

Output: displays a Histogram using letter frequencies information
=end

STDOUT.sync = true

$table    # keeps the hash table

# Helper method, which adds a character to the hash table if 
# it is an alphabet.
def update_hash_table character

    # check wherever the character is an alphabet
    if character.match(/^[[:alpha:]]$/)
	    # use to_sym to convert a string to a symbol.
        # For example, "a".to_sym becomes :a.
        symbol = character.to_sym
	    if $table.has_key?(symbol)
            # update the value of the existing key		
		    $table[symbol] += 1
		else
            # add a new key to the table with a value of 1
		    $table[symbol] = 1
		end
    end
    
end

# Helper method, which outputs the letters (keys),
# corresponding frequencies (values), and the Histogram to the screen.
def print_hash_table table
    
	table.sort.each do |key, value|
        puts "#{key} - #{value} - " + "".ljust(value, '*')
    end    
end

# Main.
begin
    # create a hash table
    $table = Hash.new()
	
	# Prompt the user to input the string and split to the array of characters.	
    print "\nEnter Data: "    
    input = gets.chomp.split("")
	
	# iterate through the array and call update_hash_table for each characters.
	input.each { |item| unless (item.nil?) then update_hash_table item.upcase end }
	
	# output the hash table
	print_hash_table $table
    
end

