json.array!(@advertisings) do |advertising|
  json.extract! advertising, :id, :Title, :Description, :ImageUrl
  json.url advertising_url(advertising, format: :json)
end
