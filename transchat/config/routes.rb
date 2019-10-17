Rails.application.routes.draw do
  resources :messages, only: [:create, :index]
  resources :sessions, only: [:create, :index]
  resources :rooms, only: [:create]
  resources :users, only: [:create, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end