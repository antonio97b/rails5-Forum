Rails.application.routes.draw do
  resources :forums do
    resources :posts,     shallow: true do
      resources :comments,  shallow: true
    end
  end
  devise_for :users
  root "application#index"
end
