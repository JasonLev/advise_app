class RelationshipsController < ApplicationController

	def show_protege
		# @current_industry = current_user.industry
		protege = Protege.find_by(params[:id])
		industry = protege.desired_industry1
		@common_advisers = Adviser.find_by_advice_industry(industry)





		# if !Adviser.find_by_user_id(current_user.id)
		# 	@role = "a protégé"
		# elsif Protege.find_by_user_id(current_user.id).user_id == current_user.id
		# 	@role = "an adviser"
		# else
		# 	redirect_to sign_in_path
		# end
		
		# @proteges = Protege.all
		# @proteges.each do |protege|
		# 	protege[:user] = protege.user
		# end

		@advisers = Adviser.all
		@advisers.each do |adviser|
			adviser[:user] = adviser.user
		end


	end
def show_adviser
		# @current_industry = current_user.industry
		adviser = Adviser.find_by(params[:id])
		industry = adviser.advice_industry
		@common_proteges = Adviser.find_by_desired_industry1(industry)


		# if !Adviser.find_by_user_id(current_user.id)
		# 	@role = "a protégé"
		# elsif Protege.find_by_user_id(current_user.id).user_id == current_user.id
		# 	@role = "an adviser"
		# else
		# 	redirect_to sign_in_path
		# end
		
		@proteges = Protege.all
		@proteges.each do |protege|
			protege[:user] = protege.user
		end

		# @advisers = Adviser.all
		# @advisers.each do |adviser|
		# 	adviser[:user] = adviser.user
		# end

	end

end
