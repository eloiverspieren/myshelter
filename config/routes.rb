Rails.application.routes.draw do
  resources :hikings do
    resources :reviews
  end
  resources :refuges do
    resources :availabilities
    resources :reviews
    resources :bookings do
      resources :payments, only: [:new, :create]
    end
  end
  resource :profile, controller: 'profile'

  get 'confirmation', to: 'payments#confirmation'
  get 'my_refuges', to: 'refuges#my_refuges'
  get 'my_bookings', to: 'bookings#my_bookings'
  resources :bookings, only: [:index] do
    member do
      get 'accept'
      get 'reject'
    end
  end

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
