Rails.application.routes.draw do
  resources :products
  # root 'home#index'
  root 'products#index'
  devise_for :users
end
