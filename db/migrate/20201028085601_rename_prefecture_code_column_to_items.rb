class RenamePrefectureCodeColumnToItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :items, :prefecture_code, :prefecture_code_id
  end
end
