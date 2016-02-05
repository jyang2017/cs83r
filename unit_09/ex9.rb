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

  # mark this mutator private
private
  def color=( value )
    @color = value
  end

  # since private applies textually 
  # to all the methods that follow,
  # we need to make to_s public

public
  # provide a string representation
  def to_s
    "#{@color} #{@make} #{@model}\n"
  end

end