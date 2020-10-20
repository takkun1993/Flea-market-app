Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#create_profiles'
    post 'profiles', to: 'users/registrations#create_profiles'
    get 'sending_destinations', to: 'users/registrations#create_end'
    post 'sending_destinations', to: 'users/registrations#create_end'
  end
  get 'users/index'
  get 'users/registrations/new'
  get 'users/registrations/new_users_info'
  get 'users/registrations/new_users_address'
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
    resources :comments, only: [:index, :create]
  # post 'items/edit/:id', to: 'items#update'
  patch 'show_item_path', to: 'items#update'
  get "search" => "items#search"
  # get 'show_item_path', to: 'items#show'
  resources :users, only: [:index, :edit, :update]
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
