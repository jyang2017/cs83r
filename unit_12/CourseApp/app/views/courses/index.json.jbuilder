json.array!(@courses) do |course|
  json.extract! course, :id, :department, :number, :title, :size, :hours, :teacher
  json.url course_url(course, format: :json)
end
