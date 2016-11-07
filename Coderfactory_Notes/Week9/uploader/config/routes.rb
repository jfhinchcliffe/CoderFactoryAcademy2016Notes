Rails.application.routes.draw do
  resources :products
  resources :gifts
  root 'gifts#index'
  resources :charges
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'add_to_cart', to: 'carts#add_to_cart'
  get 'empty_cart', to: 'carts#empty_cart'
end
