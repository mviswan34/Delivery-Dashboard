Rails.application.routes.draw do
  resources :orders
  resources :available_orders, only: [:index, :create]
  devise_for :chefs
  devise_for :customers

  get "up" => "rails/health#show", as: :rails_health_check

  root 'pages#home'
end