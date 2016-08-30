class ProfilesController < ApplicationController
  before_action :set_topics, :set_old_notifications, :set_new_notifications
  layout "profile"

  def show
    @profile = UserProfile.find_by_uid(params[:id])
    @user_topics = UserTopics.where(:user_id => params[:id])
    @user_follows = UserFollow.where(:follower_id => params[:id])
  end

  def edit
    @profile = UserProfile.find_by_uid(params[:id])
  end

  def update
    up = UserProfile.find_by_uid(params[:id])
    up.user_name = params[:user_profile][:user_name]
    up.sex = params[:user_profile][:sex]
    up.website = params[:user_profile][:website]
    up.status = params[:user_profile][:status]
    up.image_url = params[:user_profile][:image_url]
    up.save!
    redirect_to profile_path(params[:id])
  end
end
