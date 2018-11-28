Rails.application.routes.draw do
  resources :seatings
  resources :payments
  get 'show_times/new'
  get 'promotions/new'
  get 'promotion/new'
  get 'bookings/new'
  get 'halls/new'
  get   '/addmovie',  to:  'movies#new'
  get   '/editmovie',  to:  'movies#edit'
  get 'password_resets/new'
  get 'password_resets/edit'
  root   'static_pages#home'
  get    '/signup',  to: 'users#new' 
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/users',   to:  'users#index'
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :movies
  resources :halls
  resources :bookings
  resources :promotions
  resources :show_times
  resources :searches


end