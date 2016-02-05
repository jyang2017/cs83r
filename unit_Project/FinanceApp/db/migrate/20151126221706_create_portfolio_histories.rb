class CreatePortfolioHistories < ActiveRecord::Migration
  def change
    create_table :portfolio_histories do |t|
      t.references :user, index: true, foreign_key: true
      t.string :transaction_type
      t.date :transaction_date
      t.string :symbol
      t.integer :shares
      t.decimal :price

      t.timestamps null: false
    end
	add_index "portfolio_histories", ["id", "user_id"], name: "index_portfolio_histories_on_id_and_user_id", unique: true
  end
end
