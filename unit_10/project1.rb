=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: October 16, 2015
Purpose: Update the classes AppleStore and Gadget (see assignment 9 for 
         details) as described in the assignment 10. Basically, make these
         classes work with iphones, which should be subclasses of the type
         Gadget. Make three new classes, each of which represents a type of
         iPhone.

Input: 	 See the client code in the main for details, please.

Output:  Displays the string representation of the created objects of the 
         AppleStore, Gadget, and IPhone classes. 
=end

#Define the class AppleStore.
class AppleStore
    # Method declares and sets the values of an object’s instance variables.
    def initialize()
        @productssold  = 0
	    @revenueearned = 0
    end
	  
	def productssold
        @productssold
    end

    def revenueearned
        @revenueearned
    end
	  
	def createGadget( make, model, price, height, width, weight, units )
	    @productssold += 1
	    @revenueearned += price
        Gadget.new( make, model, price, height, width, weight, units )
    end
	  
	def createiPhone( model )
	    new_iphone = IPhone.new( model )
	    @productssold += 1
	    @revenueearned += new_iphone.price
	    return new_iphone
    end

    # Method provides a string representation of an AppleStore object.
    def to_s
        "A store having sold #{@productssold} products with " + 
		                         " revenue of $%.2f so far!\n" % @revenueearned
    end
end

#Define the class Gadget.
class Gadget
    # Method declares and sets the values of an object’s instance variables.
    def initialize( make, model, price, height, width, weight, units )
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
    def make=( value )
        @make = value
    end
	  
	def model=( value )
        @model = value
    end

    def price=( value )
        @price = value
    end
	  
	def height=( value )
        @make = value
    end

    def weight=( value )
        @model = value
    end

    def width=( value )
        @price = value
    end

    # Method provides a string representation of a Gadget object.
    def to_s
        "A $%.2f #{@model} weighing #{@weight} #{@units}\n" % @price
    end
end

#Define the class IPhone.
class IPhone < Gadget
    def initialize( model )	  
	    models = {:iPhone5S => 0, :iPhone6 => 1, :iPhone6Plus => 2}		  
		m = models[model.to_sym]
		
		# Pass the corresponding arguments to the initialize method of its
        # superclass, Gadget.
		case m
            when 0
                super( :iPhone, :"5S", 99.00, 4.87, 2.31, 3.95, :ounces )
            when 1
                super( :iPhone, :"6", 199.00, 5.44, 2.64, 4.55, :ounces )
            when 2
                super( :iPhone, :"6Plus", 299.00, 6.22, 3.06, 6.07, :ounces )
        end
    end     
	  
	# Method provides a string representation of a IPhone object.
    def to_s
        "A $%.2f #{@make} #{@model} weighing #{@weight} #{@units}\n" % @price
    end      
end
 
# Main.
begin
    # Client code.
    a = AppleStore.new()
    ipod = a.createGadget( :Apple, :iPodShuffle, 49, 1.14, 1.24, 0.44, :ounces )
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
    iphone6 = a.createiPhone( :iPhone6 )
    puts( "here is your iphone6! " )
    puts iphone6
    puts( "here is your AppleStore!" )
    puts a
end