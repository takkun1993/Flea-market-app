class RenameUrlColumnToItemImgs < ActiveRecord::Migration[6.0]
  def change
    rename_column :item_imgs, :remember_url, :remember_src
  end
end
