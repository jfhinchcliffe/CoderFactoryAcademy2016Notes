Rails.application.routes.draw do
  resources :listings
  get 'home/index'

  resources :profiles, except: [:index]
  devise_for :users

  get '/check_coupon', to: 'home#check_coupon'

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
