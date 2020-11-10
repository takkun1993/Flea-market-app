Rails.application.routes.draw do
  get 'buyers/index'
  get 'buyers/done'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
  }
  devise_scope :user do
    get 'profiles', to: 'users/registrations#new_users_info'
    get 'profiles', to: 'users/registrations#create_profiles'
    post 'profiles', to: 'users/registrations#create_profiles'
    get 'sending_destinations', to: 'users/registrations#create_end'
    post 'sending_destinations', to: 'users/registrations#create_end'
  end
  get 'users/index'
  # get 'users/registrations/new'
  # get 'users/registrations/new_users_address'
  # get 'users/registrations/new_users_info'
  # get 'users/sign_in'
  get 'users/sign_out'
  get 'items/item_detail'
  get 'items/item_purchase'
  post 'items/:id/destroy' => 'items#destroy'
  resources :cards, only: :new
  root 'items#index'
  get 'items/top_page_header'
  get 'items/top_page_footer'
  get 'items/payment_method'
  get 'items/shipping_address'
  resources :items do
      #Ajaxで動くアクションのルートを作成
      collection do
        get 'category_children', defaults: { format: 'json' }
        get 'category_grandchildren', defaults: { format: 'json' }
      end
      member do
        get 'purchase', to: 'items#purchase'
        post 'purchase', to: 'items#purchase'
        post 'buy', to: 'items#buy'
        get 'pay', to: 'items#pay'
        post 'pay', to: 'items#pay'
      end
    end
  resources :comments, only: [:index, :create]
  # post 'items/edit/:id', to: 'items#update'
  patch 'show_item_path', to: 'items#update'
  get "search" => "items#index"
  # get 'show_item_path', to: 'items#show'
  # resources :users, only: [:index, :edit, :update]
  resources :users, only: [:index, :edit, :update] do
    collection do
      get :complete
    end
  end
  
  resources :categories
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cards, only: [:new, :show, :destroy] do
    collection do
      post 'pay', to: 'cards#pay'
    end
  end

end
