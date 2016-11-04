Rails.application.routes.draw do
  resources :forums do
    resources :posts,     shallow: true
    resources :comments,  shallow: true
  end
  devise_for :users
  root "application#index"
end
