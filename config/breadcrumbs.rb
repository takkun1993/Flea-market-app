# ルート
crumb :root do
  link "トップページ", root_path
end
# マイページ
crumb :mypage do
  link "マイページ", users_index_path
end

# 親カテゴリーのパンくず
crumb :parent_category do |category|
  category = Category.find(params[:id]).root
  link "#{category.name}", category_path(category)
  # parent :category_index
end
# -----------------------------------------------------------------
# 子カテゴリーのパンくず
crumb :child_category do |item|
  link "#{item.category.parent.name}", category_path(item.category)
  parent :parent_category,item
end
# -----------------------------------------------------------------
# 孫カテゴリーのパンくず
crumb :grandchild_category do |item|
  link "#{item.category.name}", category_path(item.category)
  parent :child_category,item
end