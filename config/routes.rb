Rails.application.routes.draw do
  devise_for :users
  root 'messages#index'

  resources :messages, only: :index
  resources :groups, only: [:new, :create, :edit]
end
