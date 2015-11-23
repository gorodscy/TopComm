class AddBidToAdvertisements < ActiveRecord::Migration
  def change
    add_column :advertisements, :Bid, :integer
    add_column :advertisements, :MinInterval, :integer
  end
end
