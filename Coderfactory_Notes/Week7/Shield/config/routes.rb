Rails.application.routes.draw do

  root 'home#index'
  resources :contact_details

  get 'admin' => 'admin#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
