# demonstrating conversion routines
theNumberTwo = 2   # numerical data
theLetterTwo = "2" # textual data
print "four = ", theNumberTwo + theNumberTwo, "\n"
print "twotwo = ", theLetterTwo + theLetterTwo, "\n"

# same computation with conversions
print "four = ", theLetterTwo.to_i + theLetterTwo.to_i, "\n"
print "twotwo = ", theNumberTwo.to_s + theNumberTwo.to_s, "\n"

# same computation with conversions, no variables used
print "four = ", 2.to_i + 2.to_i, "\n"
print "twotwo = ", 2.to_s + 2.to_s, "\n"