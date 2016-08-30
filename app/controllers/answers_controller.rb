class AnswersController < ApplicationController
  before_action :set_topics, :set_old_notifications, :set_new_notifications

  def new
    @answer = Answer.new
    @question = Question.find_by_id(params[:question_id])
  end

  def create
    a = Answer.create
    a.text = params[:answer][:text]
    a.isactive = 1
    a.isspam = 0
    a.user_id = current_user.id
    a.question_id = params[:question_id]
    a.image_url = params[:answer][:image_url]
    a.upvotes = 0
    a.save!
    redirect_to question_path(a.question_id)
  end

end
