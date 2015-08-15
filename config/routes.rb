Rails.application.routes.draw do
  root 'search#index'


  get 'search', to: 'search#search', :as => 'search'
  resources :bookings

end
