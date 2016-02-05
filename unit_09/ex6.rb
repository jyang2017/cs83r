#access car.rb

require_relative 'car'

# some cars I've owned...
c = Car.new( "Honda", "Prelude" )
c.color = "blue"
d = Car.new( "Volkswagen", "Golf" )
d.color = "white"

print "c is: #{c.color}  #{c.make}   #{c.model} \n"
print "d is: #{d.color}  #{d.make}   #{d.model} \n"