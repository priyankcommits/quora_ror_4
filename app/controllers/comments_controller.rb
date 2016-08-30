class CommentsController < ApplicationController
  before_action :set_topics, :set_old_notifications, :set_new_notifications

  def new
    @comment = Comment.new
    @answer = Answer.find_by_id(params[:answer_id])
  end

  def create
    c = Comment.create
    c.text = params[:comment][:text]
    c.isactive = 1
    c.ispam = 0
    c.user_id = current_user.id
    c.answer_id = params[:answer_id]
    c.save!
    redirect_to question_path(params[:question_id])
  end

end
