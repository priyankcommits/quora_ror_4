class TopicsController < ApplicationController
  before_action :set_topics, :set_old_notifications, :set_new_notifications

  def show
    @questions = Question.where(:topic_id => params[:id])
  end
end
