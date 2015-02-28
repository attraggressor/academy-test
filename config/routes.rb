Rails.application.routes.draw do
  root to: 'visitors#index'

  get '/all_users', to: 'users#index', as: :users

  devise_for :users
  resources :users
  resources :cities
end
