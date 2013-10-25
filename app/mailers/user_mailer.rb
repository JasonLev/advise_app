class UserMailer < ActionMailer::Base
  default from: "jasond.levy@gmail.com" # this could be anything here"from@example.com"


  def welcome_email(user)
  	@user = user
  	#set the url of the site's login page
  	@url = 'http://adviseapp.com/login'
  	# in general it is @url = 'http://example.com/login'
  	mail(to: @user.email, subject: 'Welcome to Advise App')
  end
end
