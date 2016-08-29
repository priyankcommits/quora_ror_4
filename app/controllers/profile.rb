class ProfileController < ApplicationController
  helper_method :topic_all
  layout "profile"

  def view_profile
    @profile = User.where(:id => params[:id])
    topic_all
  end

  def topic_all
    @topics = Topic.all
  end
end
