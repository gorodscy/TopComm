class AddTypeToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :isVideo, :boolean, default: false
  end
end
