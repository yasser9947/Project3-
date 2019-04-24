# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  resources :requests
  devise_scope :user do
    authenticated :user do
      get 'users/home'
      get 'users/index'
      root 'users#index', as: :authenticated_root
    end
    unauthenticated do
      root 'users#home', as: :unauthenticated_root
    end
  end

  get 'requests/:id/stat/update' => 'requests#stat_update'
 
end
