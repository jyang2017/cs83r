# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

manilow = Artist.create!( :first_name => 'Barry', :last_name => 'Manilow', :gender => 'Male')
springsteen = Artist.create!( :first_name => 'Bruce', :last_name => 'Springsteen', :gender => 'Male')
swift = Artist.create!( :first_name => 'Taylor', :last_name => 'Swift', :gender => 'Female')
gaga = Artist.create!( :first_name => 'Lady', :last_name => 'Gaga', :gender => 'Female')

Album.create!( :artist => manilow, :title => "My Dream Duets", :star_rating => 5, :year_released => 2014 )
Album.create!( :artist => springsteen, :title => "High Hopes", :star_rating => 3, :year_released => 2014 )
Album.create!( :artist => swift, :title => "1989", :star_rating => 5, :year_released => 2014 )
Album.create!( :artist => gaga, :title => "Cheek to Cheek", :star_rating => 3, :year_released => 2014 )

