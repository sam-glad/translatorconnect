json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :title, :length, :language
  json.url assignment_url(assignment, format: :json)
end
