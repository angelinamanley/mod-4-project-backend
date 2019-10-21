Rails.application.routes.draw do
  resources :messages, only: [:create, :show]
  resources :sessions, only: [:create, :show]
  resources :rooms, only: [:create, :show, :destroy]
  resources :users, only: [:create, :show, :index]
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
