class RefactorAdsList < ActiveRecord::Migration
  def change
  	change_table :ads_lists do |t|
		t.remove :UserId
		t.belongs_to :User
  	end
  end
end
