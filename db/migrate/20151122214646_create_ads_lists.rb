class CreateAdsLists < ActiveRecord::Migration
  def change
    create_table :ads_lists do |t|
      t.integer :UserId
      t.integer :TotalProfit

      t.timestamps null: false
    end
  end
end
