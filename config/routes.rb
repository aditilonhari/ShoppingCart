Rails.application.routes.draw do
  resources :customers
  resources :categories
  resources :products
  resources :order_items, only: [:create, :update, :destroy]
  resource :cart, only: [:show]

  root to: 'products#index'

end
