Rails.application.routes.draw do
  root "home#show", page: "home"

  get "/home/:page", to: "home#show"

  get "/listings/mylistings", to: "listings#mylistings"

  resources :users
  resources :listings

  get "/sign_in", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/sessions", to: "sessions#destroy"

  
  post "/listings/searchresults", to: "listings#searchresults"

  get "/search", to: "search#index"
  get "/show", to: "search#show"

  get "*path", to: "home#show", page: "home"

end 