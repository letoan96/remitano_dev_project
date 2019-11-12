Rails.application.routes.draw do
  root 'videos#index'

  resources :users, only: [:new, :create, :delete]
end
