Rails.application.routes.draw do
  get 'memories/index'
  get 'memories/new'
  devise_for :users
  root to: 'home#index'

  resources :memories, only: [:new, :index, :show, :create]
  resources :users, only: :show
end
