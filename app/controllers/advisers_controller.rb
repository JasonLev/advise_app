class AdvisersController < ApplicationController


	def index
		if !Adviser.find_by_user_id(current_user.id)
			@role = "protégé"
			redirect_to users_path
		elsif !Protege.find_by_user_id(current_user.id)
			@role = "adviser"
		else
			redirect_to sign_up_path
		end
		@advisers = Adviser.all
		@advisers.each do |adviser|
			adviser[:user] = adviser.user
		end
	end

	def show
		@adviser = Adviser.find(params[:id]).user.name
		@adviser_email = Adviser.find(params[:id]).user.email
		@adviser_industry = Adviser.find(params[:id]).user.industry
		@adviser_current_position1 = Adviser.find(params[:id]).user.current_position1
		@adviser_past_position1 = Adviser.find(params[:id]).user.past_position1
		@adviser_linkedIn = Adviser.find(params[:id]).user.linkedIn
		if !Adviser.find_by_user_id(current_user.id)
			@role = "protégé"
		elsif !Protege.find_by_user_id(current_user.id)
			@role = "adviser"
		else
			redirect_to sign_up_path
		end
	end

	def create
		#pass through the user_id into the Adviser table
		Adviser.create(params[:adviser])
		redirect_to advisers_path(adviser.id) 
	end

end
