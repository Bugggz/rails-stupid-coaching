class QuestionsController < ApplicationController
   def ask
    # empty method
  end

  def question
    @question = params[:question_to_coach]
    if @question == "I'm going to work"
      @answer = 'Great'
    elsif @question[@question.length - 1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
