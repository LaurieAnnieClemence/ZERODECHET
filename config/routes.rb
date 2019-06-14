Rails.application.routes.draw do
  resources :categories, only: [:index, :new, :create]
  resources :wastes, only: [:index, :show, :new, :create]
  resources :solutions, only: [:create]
  resources :comments, only: [:create]

  root to: "categories#index"
end
