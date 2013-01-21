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

	def edit
  		@answer = Answer.find(params[:id])
	end

	def update
  		@answer = Answer.find(params[:id])
  		@answer.update_attributes!(params[:answer])
  		flash[:notice] = "#{@answer.context} was successfully updated."
  		redirect_to teacher_path(@answer.feedback_id)
	end


end
