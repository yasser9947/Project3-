Rails.application.routes.draw do
  get 'seniors/index'
  get 'seniors/new'
  get 'seniors/show'
  get 'seniors/edit'
  get 'childs/index'
  get 'childs/new'
  get 'childs/show'
  get 'childs/edit'
  devise_for :users
  resources :child
  resources :senior
  devise_scope :user do
    authenticated :user do
      root 'users#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
