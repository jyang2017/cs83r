# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Users
jose = User.create!( 
              :name => 'jose',
			  :password  => "foobar",
              :password_confirmation => "foobar",
			  :email => 'jose@student.smc.edu',
			  :cash => 10000.00 )

caesar = User.create!( 
              :name => 'caesar',
              :password  => "foobar",
              :password_confirmation => "foobar",
   		      :email => 'caesar@student.smc.edu',
			  :cash => 10000.00 )

varinia = User.create!(
              :name => 'varinia',
 			  :password  => "foobar",
              :password_confirmation => "foobar",
			  :email => 'varinia@student.smc.edu',
			  :cash => 10000.00 )

kevin = User.create!( 
              :name => 'kevin',
			  :password  => "foobar",
              :password_confirmation => "foobar",
			  :email => 'kevin@student.smc.edu',
			  :cash => 10000.00 )

ning = User.create!( 
              :name => 'ning',
			  :password  => "foobar",
              :password_confirmation => "foobar",
			  :email => 'ning@gmail.com',
			  :cash => 10000.00 )
			  
joseph = User.create!(
              :name => 'joseph',
			  :password  => "foobar",
              :password_confirmation => "foobar",
			  :email => 'joseph@gmail.com',
			  :cash => 10000.00 )

zamyla = User.create!( 
              :name => 'zamyla',
              :password  => "foobar",
              :password_confirmation => "foobar",
			  :email => 'zamyla@gmail.com',
			  :cash => 10000.00 )

# Portfolios
caesar_google = Portfolio.create!( :user => caesar, :symbol => 'GOOG', :shares => 1 )

zamyla_free = Portfolio.create!( :user => zamyla, :symbol => 'FREE', :shares => 100 )
zamyla_apple = Portfolio.create!( :user => zamyla, :symbol => 'AAPL', :shares => 7 )
# check that combination of user_id & symbol is unique
#zamyla_apple1 = Portfolio.create!( :user => zamyla, :symbol => 'AAPL', :shares => 8 )
zamyla_google = Portfolio.create!( :user => zamyla, :symbol => 'GOOG', :shares => 3 )

# Portfolio_Histories
zamyla_buy_free_1 = PortfolioHistory.create!(
              #:portfolio => zamyla_free,
			  :user => zamyla,
			  :transaction_type => 'BUY',
			  :transaction_date => DateTime.now,
			  :symbol => 'FREE',
			  :shares => 50,
			  :price => 1.05 )
			  
zamyla_buy_free_2 = PortfolioHistory.create!(
              #:portfolio => zamyla_free,
			  :user => zamyla,
			  :transaction_type => 'BUY',
			  :transaction_date => DateTime.now,
			  :symbol => 'FREE',
			  :shares => 150,
			  :price => 1.05 )
			  
zamyla_sell_free = PortfolioHistory.create!(
              #:portfolio => zamyla_free,
			  :user => zamyla,
			  :transaction_type => 'SELL',
			  :transaction_date => DateTime.now,
			  :symbol => 'FREE',
			  :shares => 50,
			  :price => 1.10 )
			  
zamyla_buy_apple = PortfolioHistory.create!(
              #:portfolio => zamyla_apple,
			  :user => zamyla,
			  :transaction_type => 'BUY',
			  :transaction_date => DateTime.now,
			  :symbol => 'AAPL',
			  :shares => 7,
			  :price => 119.03 )
			  
zamyla_buy_google = PortfolioHistory.create!(
              #:portfolio => zamyla_google,
			  :user => zamyla,
			  :transaction_type => 'BUY',
			  :transaction_date => DateTime.now,
			  :symbol => 'GOOG',
			  :shares => 3,
			  :price => 779.21 )
			  
caesar_buy_google = PortfolioHistory.create!(
              #:portfolio => zamyla_google,
			  :user => caesar,
			  :transaction_type => 'BUY',
			  :transaction_date => DateTime.now,
			  :symbol => 'GOOG',
			  :shares => 1,
			  :price => 779.21 )
