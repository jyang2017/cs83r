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

end