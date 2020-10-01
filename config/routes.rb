Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'items/item_exhibition'
  get 'items/item_purchase'
  resources :cards, only: :new
  root 'items#index'
  get 'items/top_page_header'
  get 'items/top_page_footer'
  get 'items/payment_method'
  get 'items/shipping_address'
  # post 'items/edit/:id', to: 'items#update'
  patch 'show_item_path', to: 'items#update'
  resources :users, only: [:index, :edit, :update]
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
