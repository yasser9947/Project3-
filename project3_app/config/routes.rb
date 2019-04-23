Rails.application.routes.draw do
  devise_for :users
  resources :request


  get 'requests/index'
  get 'requests/new'
  get 'requests/show'
  get 'requests/edit'
  get 'seniors/index'
  get 'seniors/new'
  get 'seniors/show'
  get 'seniors/edit'
  get 'childs/index'
  get 'childs/new'
  get 'childs/show'
  get 'childs/edit'
  devise_for :users
 get 'users/home'
 get 'users/show'

 resources :requests
   devise_scope :user do
    authenticated :user do
      root 'users#index', as: :authenticated_root
    end
    unauthenticated do
      root 'users#home', as: :unauthenticated_root
    end
  end
end
