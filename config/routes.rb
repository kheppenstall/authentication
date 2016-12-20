Rails.application.routes.draw do

  root 'sessions#home'
  resources :users, only: [:new, :create, :show, :index]

  post '/login', to: 'sessions#login'
  post '/logout', to: 'sessions#logout'

end
