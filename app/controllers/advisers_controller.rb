class AdvisersController < ApplicationController

	def index
		@advisers = Adviser.all
		@advisers.each do |adviser|
			adviser[:user] = adviser.user
		end
	end

	def create
		#pass through the user_id into the Adviser table
		Adviser.create(params[:adviser])
		redirect_to advisers_path 
	end

end
