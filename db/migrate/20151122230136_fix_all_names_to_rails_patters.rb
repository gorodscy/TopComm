class FixAllNamesToRailsPatters < ActiveRecord::Migration
  def change
  	change_table :users do |t|
		t.rename :Username, :username
		t.rename :Password, :password
  	end

  	change_table :ads_lists do |t|
		t.rename :TotalProfit, :total_profit
		t.rename :User_id, :user_id
		t.rename :Code, :code
		t.rename :Description, :description
  	end

  	change_table :advertisements do |t|
		t.rename :Title, :title
		t.rename :Description, :description
		t.rename :Url, :url
		t.rename :Bid, :bid
		t.rename :MinInterval, :min_interval
		t.rename :User_id, :user_id
  	end
  end
end
