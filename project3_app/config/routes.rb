# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/home'
 
  devise_for :users, controllers: { registrations: 'registrations' }
  # devise_for :users
  resources :requests
  
  resources :users
  devise_scope :user do
    authenticated :user do
      root 'users#index', as: :authenticated_root
    end
    unauthenticated do
      root 'users#home', as: :unauthenticated_root
      get 'users/home'

    end
  end

  get 'requests/:id/stat/update' => 'requests#stat_update'
 
end
