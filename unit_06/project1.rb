=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: October 4, 2015
Purpose: program prompts for a username and password and validates that
         they meet the following criteria:

         The username should:
         - have at least 8 characters long
         - contain alpha numeric characters (no spaces or special characters)
         - contain at least 1 uppercase character
         - contain at least 1 lowercase character
         - contain at least 1 numeric character (0-9)

         The password should:
         - not contain a user’s username (i.e. the username “CraigKapp1″
           is valid, but the password “CraigKapp1Password” is not valid
		   because it contains the string “CraigKapp1″)
         - be at least 8 characters long
         - only contain alpha numeric characters (no spaces or special
           characters)
         - contain at least 1 uppercase character
         - contain at least 1 lowercase character
         - contain at least 1 numeric character (0-9)

Input: 	string username;      - username
	    string password;      - password

Output: outputs the feedback on wherever the entered username and password are
        satisfied to the mentioned criteria
=end

STDOUT.sync = true

# initializing constant and assigning value to it
$MIN_LENGTH = 8

# Helper method, which returns true if string satisfies the mentioned
# in the assignment criteria and false otherwise.
def string_validator(string, parameter)
    
	if string.length <= $MIN_LENGTH
        puts "The #{parameter} requires at least #{$MIN_LENGTH} letters"
		return false
	elsif string != string.gsub(/[^0-9a-z]/i, '')
        puts "The #{parameter} can only contain alpha numeric characters "\
		     "(no spaces or special characters)"
		return false
	elsif string !~ /[A-Z]/
	    puts "The #{parameter} requires an uppercase character"
		return false
    elsif string !~ /[a-z]/
	    puts "The #{parameter} requires an lowercase character"
		return false
    elsif string !~ /\d/
	    puts "The #{parameter} requires numeric character"
		return false
    end

	return true
end

# Main.
begin
    puts "\nCS83R Username/Password Validator"
   
    print "Username: "
    username = gets.chomp
   
    print "Password: "
    password = gets.chomp
   
    unless password.include? username   
	    if string_validator(username, "Username") &&
		   string_validator(password, "Password")
		    puts "The Username/Password combination is valid!"
		end
	else
	    puts "The Password cannot contain the Username"
    end
	
end