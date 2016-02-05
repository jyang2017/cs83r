class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.references :user, index: true, foreign_key: true
      t.string :symbol
      t.integer :shares

      t.timestamps null: false
    end
	#add_index "portfolios", ["user_id", "symbol"], name: "index_portfolios_on_user_id_and_symbol", unique: true
	add_index "portfolios", ["id", "user_id"], name: "index_portfolios_on_id_and_user_id", unique: true
  end
end
