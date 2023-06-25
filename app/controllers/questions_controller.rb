class QuestionsController < ApplicationController
  def ask; end

  def answer
    user_answer = params[:answer]

    @coach_answer = if user_answer[-1] == '?'
                      'Silly question, get dressed and go to work!'
                    elsif user_answer == 'I am going to work'
                      'Great!'
                    else
                      "I don't care, get dressed and go to work!"
                    end
  end
end
