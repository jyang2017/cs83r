=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: November 7, 2015
Purpose: Create the classes TrafficSignal and LeftTurnSignal as described in
         the quiz. 

Input: 	 

Output:  
=end


#Define the class TrafficSignal.
class TrafficSignal
    # Method declares and sets the values of an object’s instance variables.  
    def initialize(green, yellow, red)
        @green   = green
		@yellow  = yellow
		@red  = red
    end
	
	# Accessor methods.
	def red()
        @red
    end

    def yellow()
        @yellow
    end
	
	def green()
        @green
    end

    # Method provides a string representation of a TrafficSignal object.
    def cycle
        puts "\n #{green} seconds of green"
		puts " #{yellow} seconds of yellow"
		puts " #{red} seconds of red"
    end
end

#Define the class LeftTurnSignal.
class LeftTurnSignal < TrafficSignal
    def initialize(green, yellow, red, turn)		
		super( green, yellow, red )
		@turn   = turn
    end
	
	# Accessor methods.
	def red()
        @red
    end

    def yellow()
        @yellow
    end
	
	def green()
        @green
    end

    def turn()
        @turn
    end
	  
	# Method provides a string representation of a LeftTurnSignal object.
    def cycle
        puts "\n #{green} seconds of green"
		puts " #{yellow} seconds of yellow"
		puts " #{red} seconds of red"
		puts " #{turn} seconds of turn"
    end
end


 
# Main.
begin
    # Client code.	
	# a trafficsignal
	s = TrafficSignal.new( 20, 20, 20 )
	s.cycle()	
	# a long green trafficsignal
	longgreen = TrafficSignal.new( 50, 10, 20 )
	longgreen.cycle()
	# a trafficsignal with a left turn
	s_turn = LeftTurnSignal.new( 20, 20, 20, 5 )
	s_turn.cycle()
	
	
    
end