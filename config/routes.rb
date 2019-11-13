Rails.application.routes.draw do
  root 'videos#index'

  get 'share', to: 'videos#new'
  resources :videos, only: [:index, :create] 

  devise_for :users, only: []
  devise_scope :user do
    post 'credentials', to: 'users#sign_up_or_login'
    delete 'log_out', to: 'users#delete'
  end
end
