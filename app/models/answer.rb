class Answer < ActiveRecord::Base
  attr_accessible :name, :context, :feedback_id, :updated_at

  belongs_to :feedback
end
