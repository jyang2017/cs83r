=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: October 4, 2015
Purpose: Create a Ruby program which calculates student fees for those attending
         Santa Monica College. 

		 SANTA MONICA COLLEGE STUDENT FEES (as of Fall, 2015):

		 ----------------------------------------------------------------------
		 Enrolment Fee                 | $ 46.00/ unit for California Residents
		                               | $ 335.00/ unit for F1/Non-Residents
		                               |
		 ----------------------------------------------------------------------
		 Student Services Fee          | $ 48.50 Winter/Summer
		 (AS sticker fee is Optional,  | $ 51.50 Fall/Spring
		              saving $ 19.50)  |
		 (ID Card fee is Optional,     |
		              saving $ 13.00)  |
		 ----------------------------------------------------------------------
		 Parking Decal (Optional)      | $ 45.00 Winter/Summer
		                               | $ 85.00 Fall/Spring
									   |
		 ----------------------------------------------------------------------

Input: 	
		number_of_units_enrolled;    - number of units enrolled
		session;                     - 0 for Fall session, 1 - Winter session,
                                       2 - Spring session or 3 - Summer session
		resident;                    - 0 for a state resident,
		                               1 - a non-state resident
		parking_decal;               - 'y' if to purchase a parking decal,
		                               'n' to not purchase it
		asSticker;                   - 'y' if to purchase an AS sticker,
		                               'n' to not purchase it
		idCard;                      - 'y' if to purchase an ID card,
		                               'n' to not purchase it

Output: total_fees;                  - total fees
=end

STDOUT.sync = true

# initializing constants and assigning values to them
$ENROLLMENT_FEE_CA_RESIDENTS = 46.00
$ENROLLMENT_FEE_NONCA_RESIDENTS = 335.00
$STUDENT_SERVICES_FEE_WINTER_SUMMER = 48.50
$STUDENT_SERVICES_FEE_FALL_SPRING = 51.50
$STUDENT_SERVICES_FEE_STICKER = 19.50
$STUDENT_SERVICES_ID_CARD = 13.00
$PARKING_DECAL_WINTER_SUMMER = 45.00
$PARKING_DECAL_FALL_SPRING = 85.00
$SESSIONS = Array["Fall", "Winter", "Spring", "Summer"]

# Helper method, which returns an integer in the [min, max] range. Raises an
# exception when the entered integer is out of the [min, max] range.
def get_integer_value(message, error_param, min, max)
    input = nil # initialize the variable so you can invoke methods on it
    until input.is_a?(Fixnum) do
        print "#{message}"
        begin
            input = Integer(gets)
		# calling Integer with a string argument raises this explicitly
		# reset input so the loop is re-entered
        rescue ArgumentError
            input = nil
        else
            if min > input || input > max
                 raise_exception(error_param)
		    end
        end	
    end
	
	return input
end

# Helper method, which returns either "y" or "n". Raises an
# exception when the entered string is neither "y" nor "n".
def get_string_value(message, error_param)
    print "#{message}"
    input = gets.chomp.downcase
	unless input == "y" || input == "n"
        raise_exception(error_param)
    end
	
	return input
end

# Helper method, which raises an exception whenever it is called.
def raise_exception(error_param)
  puts "Sorry Charlie, you entered a bad #{error_param}..."
  raise "inappropriate #{error_param} passed"
end

# Helper method, which prompts the user for input of the necessary information.
def get_data()

    begin	

	data = []
	
	# collect data
	message = "\nEnter number of units enrolled: "
	error_param = "number_of_units_enrolled"
	number_of_units_enrolled = get_integer_value(message, error_param, 0, 18)
	
	message = "Is this Fall[0], Winter[1], Spring[2] or Summer[3] session: "
	error_param = "session"
	session = get_integer_value(message, error_param, 0, 3)
	
	message = "Are you a state resident[0] or not[1]: "
	error_param = "resident"
	resident = get_integer_value(message, error_param, 0, 1)
	
	message = "Want a parking decal? [y/n]: "
	error_param = "parking_decal"
	parking_decal = get_string_value(message, error_param)
	
	message = "Want an AS sticker? [y/n]: "
	error_param = "as_sticker_fee"
	as_sticker_fee = get_string_value(message, error_param)
	
	message = "Want an ID card? [y/n]: "
	error_param = "id_card_fee"
	id_card_fee = get_string_value(message, error_param)
	
	# add data to array
	data << number_of_units_enrolled <<  resident << session <<
            as_sticker_fee << id_card_fee << parking_decal
	
	rescue
	    message = "\nContinue? [y/n]: "
		error_param = "choice"
	    choice = get_string_value(message, error_param)
		if choice == "y"
		    retry
		end
	ensure 
	    return data		
	end
end

# Calculates fees.
#
# data:
#      data[0]: number_of_units_enrolled
#      data[1]: resident
#      data[2]: session
#      data[3]: as_sticker_fee
#      data[4]: id_card_fee
#      data[5]: parking_decal
#
def calculate_fees(data)
	# compute the enrolment fee
	enrollment_fee = data[0] * (data[1] == 1 ? $ENROLLMENT_FEE_NONCA_RESIDENTS
	                                         : $ENROLLMENT_FEE_CA_RESIDENTS)
    
    # compute the student service fee
	student_service_fee = (data[2] % 2 == 1 ? $STUDENT_SERVICES_FEE_WINTER_SUMMER
                                            : $STUDENT_SERVICES_FEE_FALL_SPRING) +
		                  (data[3] == "y" ? $STUDENT_SERVICES_FEE_STICKER : 0) +
		                  (data[4] == "y" ? $STUDENT_SERVICES_ID_CARD : 0)
						
    # compute the cost of the parking decal
	parking_decal_fee = (data[2] % 2 == 1 ? $PARKING_DECAL_WINTER_SUMMER
                                          : $PARKING_DECAL_FALL_SPRING)
	parking_decal_fee = (data[5] == "y" ? parking_decal_fee : 0)
	
	total_fees = enrollment_fee + student_service_fee + parking_decal_fee
end

# Outputs the total fees.
def show_total_fees(total_fees, data)
	# output the student fees for a given session to the screen
	puts "For #{$SESSIONS[data[2]]} semester, your total fees are "\
                                                         "$ %.2f " % total_fees
end

# Main.
begin
   print "\nSMC Fee Calculator"
   
   data = get_data   
   unless data.empty?   
       total_fees = calculate_fees(data)
       show_total_fees(total_fees, data)
   end
end