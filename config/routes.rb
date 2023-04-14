# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :providers
  resources :banks
  root to: 'admin#index'

  namespace :admin do
    get :index
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
