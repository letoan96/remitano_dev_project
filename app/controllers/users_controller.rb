class UsersController < ApplicationController
  def new
      
  end

  def create
    
  end

  def sign_up_or_login
    user = User.find_for_authentication(:email => params[:email])
    if user&.valid_password?(params[:password])
      sign_in(user, scope: :user)
    else
      user = User.new(email: params[:email], password: params[:password])
      sign_in(user, scope: :user) if user.save
    end

    respond_to do |format|
      format.js 
    end
  end

  def delete
    sign_out
    
    respond_to do |format|
      format.js 
    end
  end

end
