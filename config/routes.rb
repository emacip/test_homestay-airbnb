Rails.application.routes.draw do
  root 'search#index'
  resources :bookings
end
