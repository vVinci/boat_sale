Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :boats, except: [:destroy] do
    resources :carts, only: [:new, :create]
  end
  resources :carts, only: :destroy
end
