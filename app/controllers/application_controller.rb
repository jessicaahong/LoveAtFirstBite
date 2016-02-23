class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  include SessionsHelper

  private
  	def require_login
		if !current_user
  			redirect_to "/sign_in"
  		end
  	end
end
