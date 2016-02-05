require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "there should be 6 records" do
    counter = Customer.count()
    assert_equal( counter, 6, "not 6 records found" )
  end

  test "Varner User System is found" do
    cust = Customer.find_by_customer_name( "Varner User System" )
    assert_equal( cust.city, "Naperville", "city is not right" )
  end

  test "alex sigafoos has 2 customers" do
    count = 0
    rep = Representative.find_by_last_name( "Sigafoos" )
    customers = Customer.all()
    customers.each do |customer|
        if (customer.representative_id == rep.id)
           count = count + 1 
        end
    end
    assert_equal( count, 2, "Sigafoos does not have enough customers" )
  end
end
