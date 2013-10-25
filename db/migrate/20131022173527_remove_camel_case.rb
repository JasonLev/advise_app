class RemoveCamelCase < ActiveRecord::Migration

  def down
  	remove_column :advisers, :adviserSince
  	remove_column :advisers, :adviserMeetingCount
  	remove_column :proteges, :protegeMeetingCount
  	remove_column :relationships, :protegeID
  	remove_column :relationships, :adviserID
  	remove_column :users, :groupMemberID
  	remove_column :users, :protegeID
  	remove_column :users, :meetingCount
  end
end
