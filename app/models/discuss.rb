class Discuss < ActiveRecord::Base
  attr_accessible :name, :phone, :email, :context, :feedback_id


  belongs_to :feedback
end
