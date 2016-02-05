=begin
Author: Fedorov Igor
Course Number: CS83R_1724
Date: November 7, 2015
Purpose: Create the class Jacket as described in the quiz. 

Input: 	 

Output:  
=end


#Define the class Jacket.
class Jacket      
	# Method declares and sets the values of an object’s instance variables.
    def initialize( color, size, zipperHeight, zipperWidth )
        @color  = color
		@size = size
		@make = "SMC"
		@model = "Fall"
		@zipper = Zipper.new( zipperHeight, zipperWidth )
    end
	  
	# Accessor methods.
	def make()
        @make
    end

    def model()
        @model
    end
	
	# methods
	def open()
        if @zipper.zipup
		    @zipper.zipdown
		end
    end
	
	def close()
	    if @zipper.zipdown
		    @zipper.zipup
		end	
	end
	
    # Method provides a string representation of a Jacket object.
    def to_s
	    puts "\n #{@color} color"
		puts " #{@size} size"
		puts " #{@zipper.height} height"
		puts " #{@zipper.width} width"
        
    end
end

class Zipper

   def initialize( height, width )
    @height = height
    @width = width
   end

   # accessor methods
   def height
    @height
   end

   def width
    @width
   end

   # other methods
   def zipup
    @zippedUp = true
   end

   def zipdown
    @zippedUp = false
   end

   def to_s
    "#{@height}-#{@width}-#{@zippedUp}"
   end

 end
 
# Main.
begin
    # Client code.
	jacket = Jacket.new( "black", "XXL", 4, 1 )
	jacket.to_s()
	jacket.open()
	jacket.close()    
end