Rails.application.routes.draw do
  devise_for :users
  
  resources :bookings, only: [:index, :show]
  resources :packages, only: [:index, :show]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "packages#index"
end
