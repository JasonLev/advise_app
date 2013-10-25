class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|

      t.timestamps
      t.integer :protegeID
      t.integer :adviserID
    end
  end
end
