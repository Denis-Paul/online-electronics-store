Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :shops, only:[:index, :show]
  root 'home#index'
  # root 'products#index'
  # root 'shops#index'
end
