Rails.application.routes.draw do
  root "home#show", page: "home"

  get "/home/:page", to: "home#show"

  resources :users

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
end
