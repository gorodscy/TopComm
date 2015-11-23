class RefactorAdvertisements < ActiveRecord::Migration
  def change
  	change_table :advertisements do |a|
		a.remove :DisplayTime, :isVideo
		a.rename :ImageUrl, :Url
  	end
  end
end
