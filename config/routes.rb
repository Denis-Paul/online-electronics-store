Rails.application.routes.draw do
  devise_for :users
  resources :products do 
    collection do
      get 'search', to: 'products#search'
    end
  end
  resources :order_items do 
    collection do
      post 'create', to: 'order_items#create'
      patch 'update', to: 'order_items#update'
    end
  end
  resources :shops #, only:[:index, :show]
  root 'home#index'
  # root 'products#index'
  # get 'shops#index'
  get 'cart', to: 'cart#show'
  # get 'favorites', to: '#'
end
