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

e = Car.new( "Honda", "Prelude" )
e.color = "blue"
puts c == e   # true - their data members are equal
puts c == c   # true - their data members are equal
puts c.equal?( e )# false - they are different objects
puts c.equal?( c )# true - they are the same object