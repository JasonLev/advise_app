class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

    	t.integer :groupMemberID
    	t.integer :protegeID
    	t.integer :meetingCount	
      t.timestamps
    end
  end
end
