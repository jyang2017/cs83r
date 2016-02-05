=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: September 26, 2015
Purpose: Write a Ruby program that calculates costs for a new food service
         provider, CorsairBurger.  Meal prices are based on the type of
         burger ordered ($2.00 for a plain burger, $2.50 for a cheeseburger,
         $4.00 for a double burger and $5.00 for a double burger with cheese),
         whether fries and a drink are desired ($2 more for fries and a drink),
         Total meal charges will get discounted based on large parties
         (5% reduction for ten or more burgers ordered), and whether the diner
         is an SMC student ($0.50 reduction per burger ordered).
         It adds 8.25% sales tax to get the total bill. Program does not allow
         negative data or for the number of fries and drinks ordered to exceed
         the number of burgers ordered. 

Input: 	int numberOfDinners;      - number of diners
	    int mealDesired;          - meal desired
	    int weekendsReduction;    - whever it is weekend
	    int numberOfSMCStudents;  - number of SMC student diners

Output: double mealCost;          - meal cost before applying reductions
	    double reductions;        - amount of reductions
	    double totalCos;          - total meal cost
=end

$BURGER_PR = 2.00
$CHEESEBURGER_PR = 2.50
$D_BURGER_PR = 4.00
$D_CHEESEBURGER_PR = 5.00
$FRIES_DRINK_PR = 2.00
$SMC_STUDENT_DISC = 0.50
$NUM_BURGER_DISC_PER = 5.00
$TAX_PERCENTS = 8.25

sorry = <<SORRY
Sorry Charlie!

SORRY

print "\nCorsairBurger Meal Calculator"

begin # multi-line while modifier
    
	total_burgers = 0
	meal_cost = 0
	reductions = 0
	sales_tax = 0
	
	print "\nEnter the number of burgers you want: "
    burgers = gets.chomp.to_i
	if (burgers < 0)  
		puts sorry
		print "Continue(y/n)? "
		next
	else
	    meal_cost += $BURGER_PR * burgers
	    total_burgers += burgers
	end
	
	print "Enter the number of cheeseburgers you want: "
	cheeseburgers = gets.chomp.to_i
	if (cheeseburgers < 0)	    
		puts sorry
		print "Continue(y/n)? "
		next
	else
	    meal_cost += $CHEESEBURGER_PR * cheeseburgers
	    total_burgers += cheeseburgers
	end
	
	print "Enter the number of double burgers you want: "
	d_burgers = gets.chomp.to_i
	if (d_burgers < 0)	    
		puts sorry
		print "Continue(y/n)? "
		next
	else
	    meal_cost += $D_BURGER_PR * d_burgers
	    total_burgers += d_burgers
	end
	
	print "Enter the number of double burgers with cheese you want: "
	d_cheeseburgers = gets.chomp.to_i
	if (d_cheeseburgers < 0)	    
		puts sorry
		print "Continue(y/n)? "
		next
	else
	    meal_cost += $D_CHEESEBURGER_PR * d_cheeseburgers
	    total_burgers += d_cheeseburgers
	end
	
	print "SMC Student diner discount with each burger? [1=YES/0=NO] "
	stud_discount = gets.chomp.to_i
	if (stud_discount == 1)
	    reductions += $SMC_STUDENT_DISC * total_burgers
	end
	
	print "How many fries and drinks you want with your order? "
	fries_drink = gets.chomp.to_i
	if (0 > fries_drink || fries_drink > total_burgers)	    
		put sorry
		print "Continue(y/n)? "
		next
	else
	    meal_cost += $FRIES_DRINK_PR * fries_drink
	end
	
	if (total_burgers >= 10)
	    reductions += meal_cost * $NUM_BURGER_DISC_PER / 100
	end
	
	sales_tax = (meal_cost - reductions) * $TAX_PERCENTS / 100
	
	puts "Meal Cost:  $ %.2f " % meal_cost
    puts "Reductions: $ %.2f " % reductions
    puts "Sales Tax:  $ %.2f " % sales_tax
    puts "Total Cost: $ %.2f " % (meal_cost - reductions + sales_tax)
	
    print "\nContinue(y/n)? "	
end while (user_choice = gets.chomp.downcase) != 'n'