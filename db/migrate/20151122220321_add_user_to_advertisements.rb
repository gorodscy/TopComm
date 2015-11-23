class AddUserToAdvertisements < ActiveRecord::Migration
  def change
  	change_table :advertisements do |a|
		a.belongs_to :User, index: true
  	end
  end
end
