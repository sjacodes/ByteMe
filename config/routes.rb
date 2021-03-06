Rails.application.routes.draw do
  resources :restaurant_occasions
  resources :occasions
  resources :cravings
  resources :areas
  resources :restaurants
  resources :prices

  get "/results", to: "restaurants#results", as: "restaurant_results"
  get "/home", to: "restaurants#home", as: "restaurant_home"

  root "restaurants#home"

  get "/non_exist", to: "restaurants#non_exist"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
