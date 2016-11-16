Rails.application.routes.draw do
  resources :forums do
    resources :posts,     shallow: true do
      resources :comments,  shallow: true
    end
  end
  get "/control_panel", to: "users#control_panel"
  devise_for :users
  root "application#index"
end
