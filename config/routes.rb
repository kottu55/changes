Rails.application.routes.draw do
  root 'posts#index'
  resources :users, only: [:index, :show]
  resources :posts, only: [:new, :create, :index, :show]
  devise_for :users
end
