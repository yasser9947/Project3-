Rails.application.routes.draw do
  devise_for :users
get 'users/home'
get 'users/show'

  devise_scope :user do
    authenticated :user do
      root 'users#home', as: :authenticated_root
    end
    unauthenticated do
      root 'users#home', as: :unauthenticated_root
    end
  end
end
