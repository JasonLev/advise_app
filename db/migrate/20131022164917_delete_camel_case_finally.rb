class DeleteCamelCaseFinally < ActiveRecord::Migration
  def up
  	add_column :proteges, :desired_industry1, :string
  	add_column :proteges, :desired_position1, :string
  	add_column :proteges, :desired_industry2, :string
  	add_column :proteges, :desired_position2, :string
  	add_column :proteges, :desired_industry3, :string
  	add_column :proteges, :desired_position3, :string
  	add_column :proteges, :protege_meeting_count, :integer
  	add_column :relationships, :protege_id, :integer
  	add_column :relationships, :adviser_id, :integer
  	add_column :users, :name, :string 
  	add_column :users, :email, :string
  	add_column :users, :password, :string 
  	add_column :users, :password_confirmation, :string
  	add_column :users, :group_member_id, :integer
  	add_column :users, :protege_id, :integer 
  	add_column :users, :adviser_id, :integer 
  	add_column :users, :picture, :string
  	add_column :users, :industry, :string
  	add_column :users, :current_position1, :string 
  	add_column :users, :current_position2, :string
  	add_column :users, :current_position3, :string 
  	add_column :users, :past_position1, :string
  	add_column :users, :past_position2, :string
  	add_column :users, :past_position3, :string
  	add_column :users, :linkedIn, :string
  	add_column :users, :resume, :string
  	add_column :users, :twitter, :string
  	add_column :users, :git_hub, :string
  	add_column :users, :website, :string
  	add_column :users, :meeting_count, :string
  end


  def down
  	remove_column :advisers, :adviserSince, :datetime
  	remove_column :advisers, :adviserMeetingCount, :integer
  	remove_column :proteges, :protegeMeetingCount, :integer
  	remove_column :relationships, :protegeID, :integer
  	remove_column :relationships, :adviserID, :integer
  	remove_column :users, :groupMemberID, :integer
  	remove_column :users, :protegeID, :integer
  	remove_column :users, :meetingCount, :integer
  end
end
