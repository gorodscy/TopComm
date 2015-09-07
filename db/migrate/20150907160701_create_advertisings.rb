class CreateAdvertisings < ActiveRecord::Migration
  def change
    create_table :advertisings do |t|
      t.string :Title
      t.string :Description
      t.string :ImageUrl

      t.timestamps null: false
    end
  end
end
