class CreateProteges < ActiveRecord::Migration
  def change
    create_table :proteges do |t|

      t.timestamps
      t.integer :protegeMeetingCount
    end
  end
end
