class TeacherController < ApplicationController

	def index
	end

	def new
		@showFeedbacks = Feedback.all
	end

	def create
		@answer = Answer.new(params[:answer])
                @answer.save

                redirect_to new_home_path
	end

	def show
		id = params[:id]
                @showFeedbackContext = Feedback.find(id)
	end
end
