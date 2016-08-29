class HomesController < ApplicationController
  layout "home"

  #TODO Use home#show
  def main
    @questions = Question.includes(:answers).all
  end

  #TODO Use question#show
  def view_question
    @questions = Question.where(:id => params[:id])
    render "main"
  end

  #TODO: Use topics#show
  def view_topic
    @questions = Question.where(:topic_id => params[:id])
    render "main"
  end
end
