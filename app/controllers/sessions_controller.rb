class SessionsController < ApplicationController
	def new
		@user = User.new
		redirect_to current_user if current_user
	end

	def create
		user_params = params.require(:user).permit(:email, :password)
		@user = User.confirm(user_params)
		if @user
			login(@user)
			redirect_to "/users/#{@user.id}"
		else
			flash[:error] = "Failed To Authenticate. Please try again."
			redirect_to "/sign_in"
		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to "/"
	end

end
