Rails.application.routes.draw do
  # authentication
  devise_for :users

  get "users/:id", to: "users#show"
  # get 'item/show'
  # get 'booking/show'
  # get 'booking/edit'

  resources :bookings
  resources :items
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
