Rails.application.routes.draw do
  root "home#show", page: "home"

  get "/home/:page", to: "home#show"

  get "/listings/search", to: "listings#search"
  get "/listings/mylistings", to: "listings#mylistings"

  resources :users
  resources :listings

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"

  get "*path", to: "home#show", page: "home"

  post "/listings/searchresults", to: "listings#searchresults"
end