class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :group_member_id, :protege_id, :adviser_id, :picture, :industry, :current_position1, :current_position2, :current_position3, :past_position1, :past_position2, :past_position3, :linkedIn, :resume, :twitter, :git_hub, :website, :meeting_count

  has_secure_password

  before_save :create_remember_token

  has_many :proteges
  has_many :advisers

  validates :email, uniqueness: true, presence: true
  validates :name, presence: true
  validates :password, presence: true, length: { minimum: 6 }, on: :create
  validates :password_confirmation, presence: true, on: :create

  def create_remember_token
  	self.remember_token = SecureRandom.urlsafe_base64 + self.email
  end

end
