class AddCodeToAdsList < ActiveRecord::Migration
  def change
    add_column :ads_lists, :Code, :string
  end
end
