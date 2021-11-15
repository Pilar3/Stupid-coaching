class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @reply = params[:answer]
    if @reply == "I am going to work"
      @coach_reply = "Great!"
    elsif @reply.chars.last == "?"
      @coach_reply =  "Silly question, get dressed and go to work!"
    else
      @coach_reply =  "I don't care, get dressed and go to work!"
    end
  end
end
