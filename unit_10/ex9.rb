#access car.rb


# some cars I've owned...
c = Honda.new( :Prelude )
c.color = :blue
begin
  c.vroom # succeeds
  c.vroom # fails
rescue OutOfGas
  puts "hey buddy--- you're out of gas!"
end