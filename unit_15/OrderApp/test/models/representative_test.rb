require 'test_helper'

class RepresentativeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "there should be 5 records" do
      counter = Representative.count()
      assert_equal( 5, counter, "not 5 records found" )
   end
   
   test "harold rogler is found" do
    rep = Representative.find_by_last_name( "Rogler" )
    assert_equal( "Rogler", rep.last_name, "last name is not right" )
    assert_equal( "Harold", rep.first_name, "first name is not right" )
  end

  test "alex sigafoos is found" do
    rep = Representative.find_by_last_name( "Sigafoos" )
    assert_equal( "Sigafoos", rep.last_name, "last name is not right" )
    assert_equal( "Alex", rep.first_name, "first name is not right" )
  end
   
end
