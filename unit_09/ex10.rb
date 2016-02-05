
#access car.rb


# some cars I've owned...
c = Car.new( "Honda", "Prelude" )
# because we marked color= private, 
# this is not longer legal!
c.color = "blue"
d = Car.new( "Volkswagen", "Golf" )
d.color = "white"

# now, the Car class provides a conversion to string 
puts c
puts d