Rails.application.routes.draw do
  resources :users
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  root 'welcome#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
