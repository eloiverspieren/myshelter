Rails.application.routes.draw do
  resources :hikings do
    resources :reviews
  end
  resources :refuges do
    resources :availabilities
    resources :reviews
    resources :bookings
  end
  resource :profile
    get 'my_booking', to: 'bookings#my_booking'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
