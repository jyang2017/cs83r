class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :artist, index: true
      t.string :title
      t.integer :star_rating
      t.integer :year_released

      t.timestamps
    end
  end
end
