class ProtegesController < ApplicationController
	def index
		@proteges = Protege.all
		@proteges.each do |protege|
			protege[:user] = protege.user
		end	
	end

	def new
		@protege = Protege.new
	end

	def create
		# make sure to pass through the user_id into protege along with all the params
		protege = Protege.create(params[:protege])
		redirect_to protege_path(protege)
	end

	def show
		@protege = Protege.find(params[:id]).user.name
		@protege_email = Protege.find(params[:id]).user.email
		@protege_industry = Protege.find(params[:id]).user.industry
		@protege_current_position1 = Protege.find(params[:id]).user.current_position1
		@protege_past_position1 = Protege.find(params[:id]).user.past_position1
		@protege_linkedIn = Protege.find(params[:id]).user.linkedIn
	end

	# def edit
	# 	@protege = Protege.find(params[:id])
	# end

	def update
		found_protege = Protege.find(params[:id])
		found_protege.update_attributes(params[:protege])
		user = found_protege.user
		redirect_to relationship_path found_protege
	end

	def destroy
		Protege.delete(params[:id])
		redirect_to users_path
	end

end
