json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :description, :quantity_on_hand
  json.url inventory_url(inventory, format: :json)
end
