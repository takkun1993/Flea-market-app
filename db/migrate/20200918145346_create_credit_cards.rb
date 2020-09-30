class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.integer :card_number
      t.integer :expiration_year
      t.integer :expiration_month
      t.integer :security_code
      t.references :user
      t.timestamps
    end
  end
end
