class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :family_name
      t.string :first_name_kana
      t.string :familiy_name_kana
      t.date :birth_date
      t.text :introduction
      t.string :avatar
      t.references :user
      t.timestamps
    end
  end
end
