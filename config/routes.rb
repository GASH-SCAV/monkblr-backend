Rails.application.routes.draw do
  resources :sanctifies, only: [:create]
  resources :monks, only: [:show, :index, :create]
  post "/login", to: "monks#login"

  resources :posts, only: [:create, :index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
