class CreateSnsAuthentications < ActiveRecord::Migration[6.0]
  def change
    create_table :sns_authentications do |t|
      t.string :provider
      t.string :uid
      t.text :token
      t.references :user
      t.timestamps
    end
  end
end
