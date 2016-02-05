
# demonstrating Document Syntax
helloNewlineWorld = <<IDENTIFIER
hello
World
IDENTIFIER

helloTabWorld = <<TAB
hello\tWorld
TAB

puts helloNewlineWorld
puts helloTabWorld


# with Document Syntax, no escape sequence is needed
height = <<HEIGHT
I am 6'2" tall
HEIGHT

puts height