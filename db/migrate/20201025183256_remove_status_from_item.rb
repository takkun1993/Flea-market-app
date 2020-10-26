class RemoveStatusFromItem < ActiveRecord::Migration[6.0]
  def change
    remove_reference :items, :status, null: false, foreign_key: true
  end
end
