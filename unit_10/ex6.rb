#define the class Car

class Car
  def initialize( make, model )
    @make = make
    @model = model
  end

  # accessor methods
  def make
    @make
  end

  def model
    @model
  end

  def color
    @color
  end

  def color=( value )
    @color = value
  end

  # provide a string representation
  def to_s
    "#{@color}  #{@make}  #{@model}\n"
  end

  # you can use everything you already know
  def vroom
    count = 5
    count.times do
      puts "vroom vroom..."
    end
  end

  def ==( value )
    # ensure the passed parameter is a Car object
    if (value.is_a?( Car ))
     @make == value.make && @model == value.model && @color == value.color
    else
     false
    end
  end

end

# define the class Honda

class Honda < Car

  def initialize( model )
    super( :Honda, model )
  end

end

# define the custom Exception
# Our exceptions should always subclass StandardError

class OutOfGas < StandardError

  def initialize( )
    super( "Out of gas!" )
  end

end