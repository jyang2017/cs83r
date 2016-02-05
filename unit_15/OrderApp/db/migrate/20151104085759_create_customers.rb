class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :city
      t.references :representative, index: true

      t.timestamps
    end
  end
end
