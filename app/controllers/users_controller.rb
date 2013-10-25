class UsersController < ApplicationController

	skip_before_filter :authenticate, only: [:new, :create]

  def index
  	# binding.pry
  	# current_user
  	@user = current_user
  	@proteges = Protege.all
		@proteges.each do |protege|
			protege[:user] = protege.user
		end

		@advisers = Adviser.all
		@advisers.each do |adviser|
			adviser[:user] = adviser.user
		end

  	if !Adviser.find_by_user_id(current_user.id)
			@role = "protégé"
		elsif Protege.find_by_user_id(current_user.id).user_id == current_user.id
			@role = "adviser"
		else
			redirect_to sign_in_path
		end
  	
  	
  	
  end

  def show
  	@user = current_user
  end

  def select
  end

  def create
    user = User.create(params[:user])
    sign_in(user)
    # # This is where you put in the UserMailer to send an email
    # respond_to do |format|
    # 	if @user.save
    # 		#Tell the UserMailer to send a welcome Email after save
    # 		UserMailer.confirm_user(@user).deliver
    # 	else
    # 	end
    # end
    redirect_to user_path(user.id)
  end

	def update
		current_user.update_attributes(params[:user])
		sign_in current_user
		redirect_to select_path current_user
	end
end
