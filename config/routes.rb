Rails.application.routes.draw do
  get 'map/show'
  resources :players
  resources :crews
  resources :locations
  resources :districts
  resources :characters
  resources :factions
  resources :clocks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "map#show"
end
