Rails.application.routes.draw do
  resources :cars, only: [:index]
  root "cars#index"  # Set cars#index as the root route
end
