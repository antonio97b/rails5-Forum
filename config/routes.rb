Rails.application.routes.draw do
  resources :forums
  devise_for :users
  root "application#index"
end
