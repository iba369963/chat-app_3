Rails.application.routes.draw do

  devise_for :users

  get 'messages/index'

  # Defines the root path route ("/")
  
  root to: "messages#index"
  resources :users, only: [:edit, :update]
end
