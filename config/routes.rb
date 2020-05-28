Rails.application.routes.draw do
  
  root 'users#index'
  
  resources :user, only: [:index, :sign_up, :new, :login]
  resources :product, only: [:index]
  
  get 'user/login', to: 'users#login'
  get 'sign_up', to: 'users#sign_up'
  post 'new', to: 'users#new'
  post 'user/login_check', to: 'users#login_check'
  get 'product/index', to: 'product#index'
  get 'user/sign_out', to: 'users#destroy'
end
