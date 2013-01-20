class TeacherController < ApplicationController
	before_filter :authenticate_user!
	def index
	end

	def new
		@showFeedbacks = Feedback.all
	end

	def create
		@answer = Answer.new(params[:answer])
                @answer.save

                redirect_to teacher_path(params[:answer][:feedback_id])
	end

	def show
		@id = params[:id]
                @showFeedbackContext = Feedback.find(@id)
                @showAnswerContext = Feedback.find(@id).answers.all
                @showDiscussContext = Feedback.find(@id).discusses.all        
	end
end
