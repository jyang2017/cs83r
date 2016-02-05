json.array!(@planeflights) do |planeflight|
  json.extract! planeflight, :id, :plane_id, :airline, :number, :fromcity, :tocity
  json.url planeflight_url(planeflight, format: :json)
end
