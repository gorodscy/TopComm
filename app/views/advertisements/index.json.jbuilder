json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :Title, :Description, :ImageUrl, :DisplayTime
  json.url advertisement_url(advertisement, format: :json)
end