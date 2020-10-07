Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/new_users_info'
  get 'users/new_users_address'
  get 'users/sign_in'
  get 'items/item_detail'
  get 'items/item_exhibition'
  get 'items/item_purchase'
  resources :cards, only: :new
  root 'items#index'
  get 'items/top_page_header'
  get 'items/top_page_footer'
  get 'items/payment_method'
  get 'items/shipping_address'
  resources :items
<<<<<<< HEAD
  # post 'items/edit/:id', to: 'items#update'
=======
>>>>>>> c11f74cf78d6a93a09876b08cc339ab6f97a2734
  patch 'show_item_path', to: 'items#update'
  get "search" => "items#search"
  # get 'show_item_path', to: 'items#show'
  resources :users, only: [:index, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
