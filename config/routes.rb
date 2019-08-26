Rails.application.routes.draw do
  root "posts#index"
  resources :posts, only: :show
  resources :comments, only: :create
end
