class Adviser < ActiveRecord::Base
  attr_accessible :adviser_meeting_count, :adviser_since, :participation_level, :user_id
  
  belongs_to :user
  has_many :relationships
  has_many :proteges, through: :relationships
end
