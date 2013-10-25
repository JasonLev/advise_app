class SessionsController < ApplicationController

	skip_before_filter :authenticate, only: [:new, :create]

	def new	
	end

	def create
		user = User.find_by_email(params[:user][:email])
		##we need to verify that the password matches what is stored as their password
		if user && user.authenticate(params[:user][:password])
			##now we need to create the session
			sign_in(user)
			redirect_to users_path #this is the redirection if they are returning users
		else
			flash[:errors] = "Error! You're not in the system."
			redirect_to login_path
		end
	end

	def destroy
		sign_out
		redirect_to root_path
	end
end