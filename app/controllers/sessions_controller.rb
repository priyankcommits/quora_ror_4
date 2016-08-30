class SessionsController < ApplicationController
  skip_before_filter :authenticate_user,
    :set_new_notifications,
    :set_old_notifications
  def new
  end
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    if current_user
      redirect_to home_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
