class RelationshipsController < ApplicationController

	def index
		if !Adviser.find_by_user_id(current_user.id)
			@role = "a protégé"
		elsif Protege.find_by_user_id(current_user.id).user_id == current_user.id
			@role = "an adviser"
		else
			redirect_to sign_in_path
		end
		@current_industry = current_user.industry
		# Protege.all.each do |protege|
		# 	@desired_industry1 = protege.desired_industry1
		# binding.pry
		@proteges = Protege.all
		@proteges.each do |protege|
			protege[:user] = protege.user
		end

		@advisers = Adviser.all
		@advisers.each do |adviser|
			adviser[:user] = adviser.user

		end

		# binding.pry

		# if Adviser.find_by_user_id(current_user.id).user_id == current_user.id
		# 	@role = "You are an ***Adviser***"
		# end
		

	end


end
