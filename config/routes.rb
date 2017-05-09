Rails.application.routes.draw do

  namespace :api do
    resources :mines, only: [:index]
    resources :users
    resources :posts, only: [:index]
    resources :trips, only: [:index]
  end

  devise_for :users
  root to: 'client#index'
  get '*path', to: 'client#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
