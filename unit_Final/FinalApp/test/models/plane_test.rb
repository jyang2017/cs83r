require 'test_helper'

class PlaneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "all planes hold more than 100 seats" do
    fail = false
	planes = Plane.all
	planes.each do |plane|
        unless plane.seats > 100
           fail = true
        end
    end
    assert( !fail, "not all planes hold more than 100 seats" )
  end
end
