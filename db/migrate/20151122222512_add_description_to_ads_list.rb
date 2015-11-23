class AddDescriptionToAdsList < ActiveRecord::Migration
  def change
    add_column :ads_lists, :Description, :text
  end
end
