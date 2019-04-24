Rails.application.routes.draw do
  devise_for :users
<<<<<<< HEAD
  resources :requests
=======

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
 get 'users/home'
 get 'users/show'

 resources :requests
>>>>>>> 5c8f84b2fdf02ff1ea7c377e449d393dd418d08f
   devise_scope :user do
    authenticated :user do
      root 'users#index', as: :authenticated_root
    end
    unauthenticated do
      root 'users#home', as: :unauthenticated_root
    end
  end
end
