class CreateJoinTableAdsListAdvertisements < ActiveRecord::Migration
  def change
    create_join_table :AdsLists, :Advertisements do |t|
      # t.index [:ads_list_id, :advertisement_id]
      # t.index [:advertisement_id, :ads_list_id]
    end
  end
end
