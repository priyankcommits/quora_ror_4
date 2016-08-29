class HomeController < ApplicationController
  helper_method :topic_all
  layout "home"

  def main
    @questions = Question.includes(:answers).all
    topic_all
    #@topics = Topic.all
  end

  def view_question
    @questions = Question.where(:id => params[:id])
    topic_all
    render "main"
  end

  def view_topic
    @questions = Question.where(:topic_id => params[:id])
    topic_all
    render "main"
  end

  def topic_all
    @topics = Topic.all
  end
end
