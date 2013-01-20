class Feedback < ActiveRecord::Base
   attr_accessible :name, :phone, :email, :topic, :context, :replyto, :updated_at
	

   has_many :answers
   has_many :discusses
end
