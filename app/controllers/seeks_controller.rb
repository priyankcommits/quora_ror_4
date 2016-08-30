class SeeksController < ApplicationController
  include SeeksHelper
  before_action :set_topics, :set_old_notifications, :set_new_notifications

  def new
    @notification = Notification.new
  end

  def create
    create_notification(params[:notification][:id], current_user.id, params[:question_id])
    redirect_to question_path(params[:question_id])
  end
end
