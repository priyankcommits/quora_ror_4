class QuestionsController < ApplicationController
  before_action :set_topics, :set_old_notifications, :set_new_notifications

  def new
    @question = Question.new
  end

  def show
    @questions = Question.where(:id => params[:id])
  end

  def create
    q = Question.create
    q.text = params[:question][:text]
    q.isactive = 1
    q.isspam = 0
    q.user_id = current_user.id
    q.topic_id = params[:question][:topic_id]
    q.save!
    redirect_to question_path(q.id)
  end

end
