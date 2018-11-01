class QuestionsController < ApplicationController
  ANSWERS = [
      'Great!',
      'Silly question, get dressed and go to work!',
      'I don\'t care, get dressed and go to work!'
            ]

  def ask
  end

  def choose_answer(question)
    if question == 'I am going to work'
      ANSWERS[0]
    elsif question.include? '?'
      ANSWERS[2]
    else
      ANSWERS[1]
    end
  end

  def answer
    @question = params[:question]
    @answer = choose_answer(@question)
  end
end
