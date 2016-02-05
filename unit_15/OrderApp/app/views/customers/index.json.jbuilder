json.array!(@customers) do |customer|
  json.extract! customer, :id, :customer_name, :city, :representative_id
  json.url customer_url(customer, format: :json)
end
