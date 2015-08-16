class HomeController < ApplicationController
	
  def index
    @questions = Question.order(created_at: :desc).all
  end

  def profiles
  end
  
  def jobs
	@jobs = Job.show.order(created_at: :desc).all
  end
end
