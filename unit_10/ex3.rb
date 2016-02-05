#access car.rb


# some cars I've owned...
c = Honda.new( :Prelude )
c.color = :blue
c.vroom
d = Car.new( :Volkswagen, :Golf )
d.color = :white
d.vroom

# now, the Car class provides a conversion to string
puts c
puts d

e = Car.new( :Honda, :Prelude )
e.color = :blue
puts c == e   # true - their data members are the same
puts c == c   # true - they are the same object
puts c.equal?( e ) # true - their data members are the same
puts c.equal?( c ) # true - they are the same object