class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :first_name,         null: false, default: ""
      t.string :family_name,        null: false, default: ""
      t.string :first_name_kana,    null: false, default: ""
      t.string :familiy_name_kana,  null: false, default: ""
      t.date :birth_year,           null: false
      t.date :birth_month,          null: false
      t.date :birth_day,            null: false
      t.text :introduction,         null: false
      t.string :avatar,             null: false, default: ""
      t.references :user,           null: false
      t.timestamps
    end
  end
end
