class Answer < ActiveRecord::Base
  attr_accessible :name, :context, :feedback_id

  belongs_to :feedback
end
