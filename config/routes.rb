Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'home#homepage'
  get 'homepage', to: 'home#homepage'

  get 'profile', to: 'profiles#profile', as: 'profile'
  patch 'profile', to: 'profiles#update_avatar'

  resources :books, only: [:show, :index] do
    resources :reviews, only: [:new, :create]
  end

  resources :user_books, only: [:create]

  resources :genres, only: [:index]
end