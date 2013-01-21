class HomeController < ApplicationController

	def index
	end

	def test
	end

	def aboutus
	end

	def dreamcoffee
	end

	def activity
	end
	
	def new
		@showFeedbacks = Feedback.all		
	end

	def create
		@feedback = Feedback.new(params[:feedback])
		@feedback.save
		redirect_to new_home_path

	end
	
	def show
		
		@id = params[:id]
		@showFeedbackContext = Feedback.find(@id)	
		@showAnswerContext = Feedback.find(@id).answers.all
		@showDiscussContext = Feedback.find(@id).discusses.all
	end

	def savediscuss
		@discuss = Discuss.new(params[:discuss])
                @discuss.save
		redirect_to home_path(params[:discuss][:feedback_id])
	end

end
