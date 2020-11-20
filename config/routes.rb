Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users, skip: :registration
  root to: 'pages#home'
    #devise_scope :user do
     # authenticated :user do
     #   root to: 'pages#home'
      #  root to: 'pages#home', as: :authenticated_root
     # end
     #unauthenticated do
     # root to: 'devise/sessions#new', as: :unauthenticated_root
    #end
  # end

  resources :companies do
    resources :genbas, only: [:new, :create]
  end
  resources :users do
    resources :puntos, only: [:new, :create, :index]
  end
  resources :puntos, only: [:edit, :update]
  resources :genbas, only: [:destroy]
  resources :pages, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
