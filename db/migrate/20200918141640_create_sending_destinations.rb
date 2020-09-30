class CreateSendingDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :sending_destinations do |t|
      t.string :first_name
      t.string :family_name
      t.string :first_name_kana
      t.string :family_name_kana
      t.string :post_code
      t.integer :prefecture_code
      t.string :city
      t.string :house_number
      t.string :building_name
      t.string :phone_number
      t.references :user
      t.timestamps
    end
  end
end
