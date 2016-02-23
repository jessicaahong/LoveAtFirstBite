class HomeController < ApplicationController

	def show
		@current_user
		@logged_in
		render template: "home/#{params[:page]}"
	end
end
