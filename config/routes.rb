Rails.application.routes.draw do
  resources :categories, only: [:index]
  resources :wastes, only: [ :show, :create]
  resources :solutions, only: [:create]
  resources :comments, only: [:create]
  resources :messages, only: [:index, :create]

  root to: "categories#index"

  get "*path" => redirect("/")
end
