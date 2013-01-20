class Discuss < ActiveRecord::Base
  attr_accessible :name, :phone, :email, :context, :feedback_id, :updated_at


  belongs_to :feedback
end
