json.array!(@albums) do |album|
  json.extract! album, :id, :artist_id, :title, :star_rating, :year_released
  json.url album_url(album, format: :json)
end
