Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, sign_out_via: [:get, :delete]

  resources :friends
  get 'home/about'
  # root 'home#index'
  root 'friends#index'
end
