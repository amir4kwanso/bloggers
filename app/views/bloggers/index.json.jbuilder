json.array!(@bloggers) do |blogger|
  json.extract! blogger, :id, :name, :age, :gender, :address
  json.url blogger_url(blogger, format: :json)
end
