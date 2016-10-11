Rails.application.routes.draw do
  resources :posts
  resources :forums
  devise_for :users
  root "application#index"
end
