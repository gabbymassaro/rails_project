Rails.application.routes.draw do
  devise_for :users
  root 'home#homepage'
  get 'homepage', to: 'home#homepage'
  get 'profile', to: 'home#profile'
end
