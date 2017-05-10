Rails.application.routes.draw do

  namespace :api do
    resources :mines, only: [:index, :show, :update, :create, :destroy]
    resources :users, only: [:index, :show, :profile]
    resources :posts, only: [:index]
    resources :trips, only: [:index]
    resources :profile, only: [:index, :show]
  end

  devise_for :users
  root to: 'client#index'
  get '*path', to: 'client#index'
  get 'users/profile' => "users#profile", as: "users_profile"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
