class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
      t.string :description
      t.integer :quantity_on_hand

      t.timestamps
    end
  end
end
