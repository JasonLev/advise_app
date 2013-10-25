class WelcomeController < ApplicationController
	skip_before_filter :authenticate, only: [:index, :new]

	def index
	end

	def new
		
	end

end
