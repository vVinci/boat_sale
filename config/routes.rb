Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :boats, except: [:destroy]
  resources :carts, only: [:new, :create, :destroy]
end
