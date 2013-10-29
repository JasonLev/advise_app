class RelationshipsController < ApplicationController


	def show_protege
	
		protege = Protege.find_by_user_id(current_user.id)
		industry = protege.desired_industry1
		@common_advisers = Adviser.find_by_advice_industry(industry)

		@advisers = Adviser.all

	end

	def show_adviser
	
		adviser = Adviser.find_by_user_id(current_user.id)
		industry = adviser.advice_industry
		@common_proteges = Protege.where(desired_industry1: industry)
		@proteges = Protege.all

	end

end
