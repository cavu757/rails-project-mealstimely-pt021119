Rails.application.routes.draw do

  resources :meals
  resources :comments
  resources :users

  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  get '/logout', to: 'sessions#destroy'

  get '/auth/facebook/callback' => 'sessions#create'
  
end
