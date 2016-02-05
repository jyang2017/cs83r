# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


rogler = Representative.create!( :last_name => 'Rogler', :first_name => 'Harold', :region => 'SW', :hire_date => '05-JAN-1999', :phone => '(310) 456-7890' )
higgins = Representative.create!( :last_name => 'Higgins', :first_name => 'Heather', :region => 'SE', :hire_date => '16-DEC-1991', :phone => '(404) 524-8472' )
sullivan = Representative.create!( :last_name => 'Sullivan', :first_name => 'Peter', :region => 'NE', :hire_date => '21-FEB-1988', :phone => '(305) 734-2987' )
speed = Representative.create!( :last_name => 'Speed', :first_name => 'Kristen', :region => 'MW', :hire_date => '14-JUN-1990', :phone => '(708) 823-8222' )
sigafoos = Representative.create!( :last_name => 'Sigafoos', :first_name => 'Alex', :region => 'NW', :hire_date => '05-MAR-2001', :phone => '(310) 123-7890' )

scanner = Inventory.create!( :description => 'Hand Scanner',  :quantity_on_hand => 191 )
modem = Inventory.create!( :description => 'Modem',  :quantity_on_hand => 453 )
Inventory.create!( :description => 'Hard Drive',  :quantity_on_hand => 294 )
Inventory.create!( :description => 'Printer pack',  :quantity_on_hand => 676 )
Inventory.create!( :description => 'CD-ROM drive',  :quantity_on_hand => 817 )
holder = Inventory.create!( :description => '3 1/2" disk holder',  :quantity_on_hand => 982 )
soundcard = Inventory.create!( :description => 'Sound Card',  :quantity_on_hand => 0 )
Inventory.create!( :description => 'Mouse',  :quantity_on_hand => 296 )
Inventory.create!( :description => "Rogler's DSL",  :quantity_on_hand => 152 )

Customer.create!( :customer_name => "Ballard Computer", :city => "Seattle", :representative => sigafoos )
cc  = Customer.create!( :customer_name => "Computer City", :city => "Miami", :representative => sullivan )
us = Customer.create!( :customer_name => "Under_Score, Inc.", :city => "Atlanta", :representative => higgins )
Customer.create!( :customer_name => "Varner User System", :city => "Naperville", :representative => speed )
Customer.create!( :customer_name => "100% Jargon", :city => "Spokane", :representative => sigafoos )
cs = Customer.create!( :customer_name => "Computing Solutions", :city => "Tuscon", :representative => rogler )

Invoice.create!( :customer => cc, :invoice_date => "12-MAY-1999", :item_number => soundcard, :quantity => 11 )
Invoice.create!( :customer => us, :invoice_date => "28-FEB-1999", :item_number => soundcard, :quantity => 15 )
Invoice.create!( :customer => us, :invoice_date => "13-SEP-2000", :item_number => soundcard, :quantity => 14 )
Invoice.create!( :customer => cc, :invoice_date => "10-JUL-2001", :item_number => soundcard, :quantity => 10 )
Invoice.create!( :customer => cs, :invoice_date => "31-AUG-2001", :item_number => soundcard, :quantity => 20 )

