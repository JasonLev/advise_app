class AddIndustry < ActiveRecord::Migration
  def change
  	add_column :advisers, :advice_industry, :string
  end

end
