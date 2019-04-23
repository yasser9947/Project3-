Rails.application.routes.draw do
  devise_for :users
  resources :request
   devise_scope :user do
    authenticated :user do
      root 'users#index', as: :authenticated_root
    end
    unauthenticated do
      root 'users#home', as: :unauthenticated_root
    end
  end
end
