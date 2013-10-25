class AddParticipationLevelToAdviser < ActiveRecord::Migration
  def change
  	add_column :advisers, :participation_level, :string
  end
end
