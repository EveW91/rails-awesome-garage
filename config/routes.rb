Rails.application.routes.draw do
  root "cars#index"

  resources :cars, only: [:index, :show]
  resources :reviews, only: [:show, :new, :create]
  resources :favourites, only: [:new, :create, :show, :destroy]
end
