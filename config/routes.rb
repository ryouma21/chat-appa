Rails.application.routes.draw do
  resources :users, only: [:edit, :update]
  root to: "rooms#index"
  devise_for :users
  resources :rooms, only: [:new, :create, :show, :destroy] do
    resources :messages, only: [:index, :create]
  end
end
