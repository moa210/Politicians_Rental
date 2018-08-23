Rails.application.routes.draw do
  # authentication
  devise_for :users
  resources :bookings, except: [:new, :create, :edit, :update]
  get 'user_items', to: 'items#user_items', as: 'user_items'
  resources :items do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  resources :users, only: [:show, :edit, :update]
  # get 'item/show'
  # get 'booking/show'
  # get 'booking/edit']

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
