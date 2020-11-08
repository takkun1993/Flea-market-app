class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :introduction
      t.integer :price
      t.references :brand
      t.integer :item_condition_id
      t.integer :postage_payer_id
      t.integer :prefecture_code_id
      t.integer :size
      t.integer :preparation_day_id
      t.integer :postage_type
      t.references :item_img
      t.references :category
      t.references :comment
      # t.enum :trading_status
      t.references :seller
      t.references :buyer
      t.references :user
      t.timestamps
    end
  end
end
