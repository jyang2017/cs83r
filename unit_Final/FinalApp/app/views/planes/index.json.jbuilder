json.array!(@planes) do |plane|
  json.extract! plane, :id, :manufacture, :model, :seats
  json.url plane_url(plane, format: :json)
end
