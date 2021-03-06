Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  resources :sessions, only: [:destroy]

  resources :users, only: [:new, :create]

  get '/welcome', to: 'users#welcome'
  
end
