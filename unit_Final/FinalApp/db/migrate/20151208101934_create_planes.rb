class CreatePlanes < ActiveRecord::Migration
  def change
    create_table :planes do |t|
      t.string :manufacture
      t.string :model
      t.integer :seats

      t.timestamps
    end
  end
end
