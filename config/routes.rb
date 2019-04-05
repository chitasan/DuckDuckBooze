Rails.application.routes.draw do
  root 'home#index'

  resources :items, only: [:index, :show]


  namespace :admin do
    resources :merchants, only: [:show]
    resources :users, only: [:show, :index, :update]

    get '/dashboard', to: 'dashboard#show'
  end

  namespace :dashboard do
    resources :items #new
    get '/', to: 'merchants#show'
  end

  resources :carts, only: [:create]

  resources :users, only: [:new, :create, :edit]

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  get '/cart', to: 'carts#show'

  get '/profile', to: 'users#show'
  get '/profile/orders', to: 'users/orders#show'

  get '/merchants', to: 'merchants#index'
end
