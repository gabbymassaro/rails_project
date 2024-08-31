Rails.application.routes.draw do
  devise_for :users
  root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get 'profile', to: 'home#profile'

  resources :books, only: [:show, :index] do
    resources :reviews, only: [:new, :create]
  end

  resources :user_books, only: [:create]
end
