require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "there should be 4 records" do
    counter = Album.count()
    assert_equal( counter, 4, "not 4 records found" )
  end
  
  test "there should be 4 different records" do	
	albums = Album.all.map{|album| "#{album.title}"}
	assert_equal( albums.uniq.length, 4, "not 4 different records found" )
  end
  
  test "each album was released in 2014" do
    fail = false
	albums = Album.all
	albums.each do |album|
        unless album.year_released == 2014
           fail = true
        end
    end
    assert( !fail, "not each album was released in 2014" )
  end
  
  test "there are no albums with 2 stars or 1 stars" do
    fail = false
	albums = Album.all
	albums.each do |album|
        if album.star_rating == 1 || album.star_rating == 2
           fail = true
        end
    end
    assert( !fail, "there are albums with 2 stars or 1 stars" )
  end
  
end
