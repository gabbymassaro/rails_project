Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'home#homepage'
  get 'homepage', to: 'home#homepage'

  get 'profile', to: 'users#profile', as: 'profile'
  patch 'profile', to: 'users#update_avatar'

  get 'favorite_genres/edit', to: 'users#edit_favorite_genres'
  patch 'favorite_genres', to: 'users#update_favorite_genres'

  resources :books, only: [:show, :index] do
    resources :reviews, only: [:new, :create]
  end

  resources :user_books, only: [:create]

  resources :genres, only: [:index, :show]
end