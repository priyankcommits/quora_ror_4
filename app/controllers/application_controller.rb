class ApplicationController < ActionController::Base
  before_filter :set_topics
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def set_topics
    @topics = Topic.all
  end
end

