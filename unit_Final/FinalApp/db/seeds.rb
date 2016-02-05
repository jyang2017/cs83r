# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

plane_01 = Plane.create!( :manufacture => 'Boeing', :model => '747-100', :seats => 400 )
plane_02 = Plane.create!( :manufacture => 'Boeing', :model => '737-300', :seats => 128 )
plane_03 = Plane.create!( :manufacture => 'Airbus', :model => 'A330',    :seats => 350 )
plane_04 = Plane.create!( :manufacture => 'Airbus', :model => 'A321',    :seats => 135 )

Planeflight.create!( :plane => plane_01, :airline => 'United', :number => 101, :fromcity => 'Los Angeles', :tocity => 'Tokyo' )
Planeflight.create!( :plane => plane_02, :airline => 'Southwest', :number => 3085, :fromcity => 'Seattle', :tocity => 'Boston' )
Planeflight.create!( :plane => plane_03, :airline => 'American', :number => 31, :fromcity => 'Hong Kong', :tocity => 'London' )
Planeflight.create!( :plane => plane_04, :airline => 'Alaska', :number => 760, :fromcity => 'Burbank', :tocity => 'Seattle' )