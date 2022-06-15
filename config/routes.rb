Rails.application.routes.draw do
  resources :admins
  resources :giftcards
  devise_for :users
  resources :friends
  get 'home/about'
  get 'home/history'
  root 'home#index'
  get "login", to: "sessions#new"
post "login", to: "sessions#create"
delete "logout", to: "sessions#destroy"
  get 'home/link'
  delete 'users/sign_out'
  get 'home/orderhistory'
  
  #get 'giftcards/adminindex'
  # get 'users/sign_out'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
