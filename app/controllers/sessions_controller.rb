class SessionsController < ApplicationController
  def new
  end
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    if current_user
      redirect_to main_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
