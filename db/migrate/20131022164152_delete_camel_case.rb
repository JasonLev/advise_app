class DeleteCamelCase < ActiveRecord::Migration
  def up
  	add_column :advisers, :adviser_since, :string
  	add_column :advisers, :participation_level, :string
  	add_column :advisers, :adviser_meeting_count, :integer
  end

  def down
  	remove_column :advisers, :adviserSince, :datetime
  	remove_column :advisers, :adviserMeetingCount , :integer
  end
end
