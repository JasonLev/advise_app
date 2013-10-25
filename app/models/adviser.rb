class Adviser < ActiveRecord::Base
  attr_accessible :adviser_meeting_count, :adviser_since, :participation_level, :user_id, :advice_industry
  #in the future I will make the advice_industry a separate model (for standardization)
  belongs_to :user
  has_many :relationships
  has_many :proteges, through: :relationships
end
