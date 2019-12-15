Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :users
  resources :categories
  resources :relationships, only: [:create, :destroy]
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
end
