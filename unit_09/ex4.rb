#access car.rb

require_relative 'car'

# some cars I've owned...
c = Car.new( "Honda", "Prelude" )
d = Car.new( "Volkswagen", "Golf" )

print "c is: #{c.make} #{c.model}\n"
print "d is: #{d.make} #{d.model}\n"