Rails.application.routes.draw do
  root to: 'departures#index'
  resources :departures, only: [:create, :index]
end
