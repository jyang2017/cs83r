#access car.rb


# some cars I've owned...
c = Car.new( "Honda", "Prelude" )
c.color = "blue"
c.vroom
d = Car.new( "Volkswagen", "Golf" )
d.color = "white"
d.vroom

# now, the Car class provides a conversion to string 
puts c
puts d