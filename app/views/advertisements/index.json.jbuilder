json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :title, :description, :url
  json.url advertisement_url(advertisement, format: :json)
end
