Rails.application.routes.draw do
  root 'home#index'
  # devise_for :users
  devise_for :users do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
  resources :favorites
  resources :products do 
    collection do
      get 'search', to: 'products#search'
    end
  end
  resources :order_items do 
    collection do
      post 'create', to: 'order_items#create'
      # patch 'update', to: 'order_items#update'
    end
  end
  resources :shops #, only:[:index, :show]
  # root 'products#index'
  # get 'shops#index'
  get 'cart', to: 'cart#show'
end
