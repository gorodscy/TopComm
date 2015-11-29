class RenameAdsListTableAds < ActiveRecord::Migration
  def change
  	rename_table :AdsLists_Advertisements, :ads_lists_advertisements
  end
end
