#access car.rb

require_relative 'car'

# some cars I've owned...
c = Car.new( "Honda", "Prelude" )
c.color = "blue"
d = Car.new( "Volkswagen", "Golf" )
d.color = "white"

# now, the Car class provides a conversion to string 
puts c
puts d