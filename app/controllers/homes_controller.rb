class HomesController < ApplicationController
  before_action :set_topics, :set_old_notifications, :set_new_notifications
  layout "home"

  def show
    @questions = Question.includes(:answers).all.order("created_at DESC")
  end

  def upvote
    answer = Answer.find_by_id(params[:id])
    answer.upvotes = answer.upvotes + 1
    answer.save!
    redirect_to question_path(answer.question_id)
  end

  def follow_user
    user_follow = UserFollow.create
    user_follow.follower_id = current_user.id
    user_follow.following_id = params[:id]
    user_follow.save!
    redirect_to profile_path(params[:id])
  end

  def follow_topic
    user_topic = UserTopics.create
    user_topic.user_id = current_user.id
    user_topic.topic_id = params[:id]
    user_topic.save!
    redirect_to profile_path(current_user.id)
  end

end
