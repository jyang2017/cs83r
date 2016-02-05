class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :customer, index: true
      t.date :invoice_date
      t.references :item_number, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
