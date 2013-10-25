class Remove < ActiveRecord::Migration
	def change
		remove_column :users, :protege_id
		remove_column :users, :adviser_id
		add_column :proteges, :user_id, :integer
		add_column :advisers, :user_id, :integer
		add_index :proteges, :user_id
		add_index :advisers, :user_id
	end
	
end
