class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :introduction
      t.integer :price
      t.references :brand
      t.integer :item_condition
      t.integer :postage_payer
      t.integer :prefecture_code
      t.integer :size
      t.integer :preparation_day
      t.integer :postage_type
      t.references :src
      t.references :category
      t.references :comment
      # t.enum :trading_status
      t.references :seller
      t.references :buyer
      t.timestamps
    end
  end
end
