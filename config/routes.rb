Rails.application.routes.draw do
  
  resources :users
  resources :topics

  root 'pages#index'
  get 'pages/help'

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
  get 'topics/new'
  get 'sessions/new'

  resources :users

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  
  resources :users
  resources :topics

  get 'favorites/index'
  post '/favorites', to: 'favorites#create'
end
