json.array!(@representatives) do |representative|
  json.extract! representative, :id, :last_name, :first_name, :region, :hire_date, :phone
  json.url representative_url(representative, format: :json)
end
