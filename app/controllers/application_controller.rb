class ApplicationController < ActionController::Base
  before_filter :authenticate_user

  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def store_location url
    session[:return_path] = url
  end

  def signed_in_user?
    current_user && ((current_user.oauth_expires_at.to_i - (300)) > Time.now.to_i)
  end

  def authenticate_user
    if !current_user || !current_user.oauth_token
      store_location request.url
      redirect_to new_session_path, alert: 'This area is restricted to authorised members only'
      return false
    end

    if !signed_in_user?
      store_location request.url
      redirect_to new_session_path, notice: 'Please login to continue.'
    end
  end

  def set_topics
    @topics = Topic.all
  end

  def set_new_notifications
    @new_notifications = Notification.where(:to_id => current_user.id, :read => false)
  end

  def set_old_notifications
    @old_notifications = Notification.where(:to_id => current_user.id, :read => true)
  end

end

