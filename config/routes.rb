Rails.application.routes.draw do
  root "mentoras#index"

  resources :mentoras
  # get "mentoras/index"
  # get "mentoras/new", to: "mentoras#new"
  # post "mentoras", to: "mentoras#create"
  # get "mentoras/:id", to: "mentoras#show", as: "mentora"


  get "up" => "rails/health#show", as: :rails_health_check
end
