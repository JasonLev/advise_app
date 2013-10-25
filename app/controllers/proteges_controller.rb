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
		Protege.create(params[:protege])
		redirect_to proteges_path 
	end

	# def show
	# 	@protege = Protege.find(params[:id])
	# end

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
