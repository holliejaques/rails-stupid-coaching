class QuestionsController < ApplicationController

  def ask
  end

  def answer
    # compute an instance variable answer for the view to display
    @question = params[:answer]

    # read the question from params
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
