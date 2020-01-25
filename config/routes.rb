Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  root 'posts#lp'
  resources :users
  resources :categories
  resources :relationships, only: [:create, :destroy]
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
end
