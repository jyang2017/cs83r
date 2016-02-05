def grade( percentage )
 # try raising an exception instead...
 if (percentage < 0 or percentage > 100)
   # this next statement builds an object of type RuntimeErrorÂ 
   raise "inappropriate percentage passed"

 end

 case percentage
    when 0..59
      "F"
    when 60,61,62,63,64,65,66,67,68,69
      "D"
    when 70..79
      "C"
    when 80..89
      "B"
    when 90..100
      "A"

  end

 end

 begin

   print "score? "
   score = gets.chomp.to_i
   puts grade( score )

 # this statement catches StandardError
 # RuntimeError is a sub-class of StandardError
 rescue

   puts "Sorry Charlie, you entered a bad percentage..."

 ensure

   puts "All done!"

 end