class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.string :Title
      t.string :Description
      t.string :ImageUrl
      t.integer :DisplayTime

      t.timestamps null: false
    end
  end
end
