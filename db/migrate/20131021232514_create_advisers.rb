class CreateAdvisers < ActiveRecord::Migration
  def change
    create_table :advisers do |t|

      t.timestamps
      t.datetime :adviserSince
      t.integer :adviserMeetingCount
    end
  end
end
