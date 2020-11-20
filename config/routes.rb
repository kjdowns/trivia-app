Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#home'
  
  resources :users, only: [:new, :create, :destroy]
  resources :games

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'

end
