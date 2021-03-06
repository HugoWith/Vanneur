Rails.application.routes.draw do
  resources :dashboards, only: [:index]
  # get 'rentals/new', to: "rentals#new"
  get 'vans/search', to: "vans#search"

  resources :vans do
    resources :rentals, only: [:new, :create]
  end

  resources :rentals, only: [:destroy]
  # get 'rentals/create', to: "rentals#create"
  # get 'vans/new' to: "vans#new"
  # get 'vans/create', to: "vans#create"
  # get 'vans/show' to: "vans#show"
  devise_for :users

  root to: 'vans#search'
  # devise_scope :user do
  #  root to: "vans#search"
  # end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
