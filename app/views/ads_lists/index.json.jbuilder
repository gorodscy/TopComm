json.array!(@ads_lists) do |ads_list|
  json.extract! ads_list, :id, :UserId, :total_profit
  json.url ads_list_url(ads_list, format: :json)
end
