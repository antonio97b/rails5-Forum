Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :forums, except: :index
  devise_for :users
  root "application#index"
end
