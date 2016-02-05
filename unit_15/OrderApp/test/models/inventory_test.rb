require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
    test "there should be nine records" do
    counter = Inventory.count()
    assert_equal( 9, counter, "not 9 records found" )
  end

  test "sound card has 0 quantity" do
    item = Inventory.find_by_description( "Sound card" )
    assert_equal( 0, item.quantity_on_hand, "quantity is not 0" )
  end

  test "disk holder has largest on hand quantity" do
    items = Inventory.all() 
    qty = 0
    largeitem = ""
    items.each do |item|

       if (qty < item.quantity_on_hand) 
          qty = item.quantity_on_hand
          largeitem = item.description
       end

    end 
    assert_equal( 982, qty, "quantity is not right" )
    assert_equal( "3 1/2\" disk holder", largeitem, "description is not right" )
  end
  
end
