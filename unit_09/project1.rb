=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: October 16, 2015
Purpose: Create the classes AppleStore and Gadget as described in
         the assignment 9. There are two separate classes AppleStore and Gadget
		 that are connected in the sense that client code asks the AppleStore
         to build it a Gadget.

Input: 	 See the client code in the main for details, please.

Output:  Displays the string representation of the created objects of the 
         AppleStore and Gadget classes.
=end

#Define the class AppleStore.
class AppleStore      
	# Method declares and sets the values of an object’s instance variables.
    def initialize()
        @productssold  = 0
		@revenueearned = 0
    end
	  
	# Accessor methods.
	def productssold
        @productssold
    end

    def revenueearned
        @revenueearned
    end
	  
	# Method returns a Gadget object to the client code and
	# updates the corresponding values of an AppleStore object.
	def createGadget(make, model, price, height, width, weight, units)
	    @productssold += 1
		@revenueearned += price
        Gadget.new(make, model, price, height, width, weight, units)
    end
	
    # Method provides a string representation of an AppleStore object.
    def to_s
        "A store having sold #{productssold} products with " + 
		                          " revenue of $%.2f so far!\n" % revenueearned
    end
end

#Define the class Gadget.
class Gadget
    # Method declares and sets the values of an object’s instance variables.  
    def initialize(make, model, price, height, width, weight, units)
        @make   = make
		@model  = model
		@price  = price
		@height = height
		@weight = weight
		@width  = width
		@units  = units		
    end
      
    # Accessor methods.
    def make
        @make
    end

    def model
        @model
    end

    def price
        @price
    end
	  
	def height
        @make
    end

    def weight
        @model
    end

    def width
        @price
    end
	  
    # Mutator methods.
    def make=(value)
        @make = value
    end
	  
	def model=(value)
        @model = value
    end

    def price=(value)
        @price = value
    end
	  
	def height=(value)
        @make = value
    end

    def weight=(value)
        @model = value
    end

    def width=(value)
        @price = value
    end

    # Method provides a string representation of a Gadget object.
    def to_s
        "A $%.2f #{@model} weighing #{@weight} #{@units}\n" % @price
    end
end
 
# Main.
begin
    # Client code.
    a = AppleStore.new()
    ipod = a.createGadget(:Apple, :iPodShuffle, 49, 1.14, 1.24, 0.44, :ounces)
    # arguments are make, model, price, height, width, 
    # weight and weight scale
    puts( "here is your ipod!!" )
    puts ipod
    puts( "here is your AppleStore!!" )
    puts a
    macmini = a.createGadget( :Apple, :MacMini, 599, 1.4, 7.7, 2.7, :pounds )
    puts( "here is your macmini!" )
    puts macmini
    puts( "here is your AppleStore!" )
    puts a
end