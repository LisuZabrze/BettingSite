Rails.application.routes.draw do
  devise_for :users
  resources :teams
  resources :games
  root 'games#index'
  # config/routes.rb

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
