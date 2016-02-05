require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "there should be 4 records" do
    counter = Artist.count()
    assert_equal( counter, 4, "not 4 records found" )
  end
  
  test "there should be 4 different records" do	
	artists = Artist.all.map{|artist| "#{artist.first_name} #{artist.last_name}"}
	assert_equal( artists.uniq.length, 4, "not 4 different records found" )
  end
  
  test "Barry Manilow is found" do
    artist = Artist.find_by_last_name( "Manilow" )
    assert_equal( "Manilow", artist.last_name, "last name is not right" )
    assert_equal( "Barry", artist.first_name, "first name is not right" )
  end
  
   test "each artist has an album associated with it" do
    fail = false
	artists = Artist.all
	artists.each do |artist|
        unless artist.albums.size == 1
           fail = true
        end
    end
    assert( !fail, "not each artist has an exactly 1 album associated with it" )
  end
end
