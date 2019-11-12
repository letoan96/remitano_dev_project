Rails.application.routes.draw do
  root 'videos#index'
  devise_for :users, only: []
  
  devise_scope :user do
    post 'credentials', to: 'users#sign_up_or_login'
    delete 'log_out', to: 'users#delete'
  end
end
