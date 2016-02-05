require 'test_helper'

class PlaneflightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "each planeflight defines different FromCity and ToCity values" do
    fail = false
	planeflight = Planeflight.all
	planeflight.each do |planeflight|
        unless planeflight.fromcity != planeflight.tocity
           fail = true
        end
    end
    assert( !fail, "not each planeflight defines different FromCity and ToCity values" )
  end
end
