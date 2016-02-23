class HomeController < ApplicationController
layout "loggedout"	

	def show
		render template: "home/#{params[:page]}"
	end
end
