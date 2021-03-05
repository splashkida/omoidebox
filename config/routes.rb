Rails.application.routes.draw do
  get 'memories/index'
  get 'memories/new'
  get 'memories/search'

  devise_for :users
  root to: 'home#index'

  resources :memories, only: [:new, :index, :show, :create, :edit, :update]
  resources :users, only: :show
end
