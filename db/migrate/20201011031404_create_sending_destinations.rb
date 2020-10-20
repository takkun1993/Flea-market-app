class CreateSendingDestinations < ActiveRecord::Migration[6.0]
  def change
    create_table :sending_destinations do |t|
      t.string :first_name,       null: false, default: ""
      t.string :family_name,      null: false, default: ""
      t.string :first_name_kana,  null: false, default: ""
      t.string :family_name_kana, null: false, default: ""
      t.string :post_code,        null: false, default: ""
      t.integer :prefecture_code, null: false
      t.string :city,             null: false, default: ""
      t.string :house_number,     null: false, default: ""
      t.string :building_name,    null: false, default: ""
      t.string :phone_number,     null: false, default: ""
      t.references :user,         null: false
      t.timestamps
    end
  end
end
