class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name,               :null => false
      t.string  :password_digest,    :null => false
      t.string  :email,              :null => false
      t.decimal :cash,               precision: 16, scale: 4, default: 10000.00, :null => false

      t.timestamps null: false
    end
  end
end
