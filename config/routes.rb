Rails.application.routes.draw do
  devise_for :users
  root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get 'profile', to: 'home#profile'
  patch 'profile', to: 'home#update_profile'

  resources :books, only: [:show, :index] do
    resources :reviews, only: [:new, :create]
  end

  resources :user_books, only: [:create]
end


# Some setup you must do manually if you haven't yet:

#   Ensure you have overridden routes for generated controllers in your routes.rb.
#   For example:

#     Rails.application.routes.draw do
#       devise_for :users, controllers: {
#         sessions: 'users/sessions'
#       }
#     end