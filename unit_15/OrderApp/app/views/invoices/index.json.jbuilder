json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :customer_id, :invoice_date, :item_number_id, :quantity
  json.url invoice_url(invoice, format: :json)
end
