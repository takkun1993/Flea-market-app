class CreateUserEvaluations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_evaluations do |t|
      t.text :review
      t.references :user
      t.references :item
      t.references :evaluation
      t.timestamps
    end
  end
end
