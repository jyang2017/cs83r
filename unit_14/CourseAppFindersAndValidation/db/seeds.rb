# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.create!( :department => "CS", :number => "83R", :title => "Server-Side Ruby Web Programming", :size => 45, :hours => 3, :teacher => "Professor Stahl" )
Course.create!( :department => "CS", :number => "17", :title => "Assembly Language Programming", :size => 45, :hours => 3, :teacher => "Professor Stahl" )
Course.create!( :department => "CS", :number => "20B", :title => "Data Structures with Java", :size => 45, :hours => 3, :teacher => "Professor Jupe" )
Course.create!( :department => "CS", :number => "50", :title => "C Programming", :size => 45, :hours => 3, :teacher => "Professor Dehkhoda" )
Course.create!( :department => "OFTECH", :number => "9", :title => "Keyboarding Improvement", :size => 45, :hours => 1, :teacher => "Professor Gross" )