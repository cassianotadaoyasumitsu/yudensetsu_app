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
  resources :users
  resources :genbas, only: [:destroy]
  resources :puntos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
