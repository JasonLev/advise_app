class Protege < ActiveRecord::Base
  attr_accessible :desired_industry1, :desired_position1, :desired_industry2, :desired_position2, :desired_industry3, :desired_position3, :protege_meeting_count, :user_id

  belongs_to :user
  has_many :relationships
  has_many :advisers, through: :relationships

end
