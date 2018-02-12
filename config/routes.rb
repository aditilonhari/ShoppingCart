Rails.application.routes.draw do
  resources :customers
  resources :categories
  resources :products
  resources :order_items, only: [:create, :update, :destroy]

  root to: 'products#index'
  get 'order/show'
  get 'order/add_to_order/:id' => "order#add_to_order", as: :add_to_order_path

end