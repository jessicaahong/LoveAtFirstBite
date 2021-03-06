class UsersController < ApplicationController
before_action :require_login, only: [:index, :show, :edit, :update, :destroy]

	def index
		@users = User.all
		render :index
	end

	def new
		current_user
		logged_in?
		if (@logged_in == false)
			@user = User.new
			render :new
		else
			redirect_to "/users/#{@current_user.id}"
		end
	end

	def create
		@user = User.create(user_params)
		login(@user)
		redirect_to "/users/#{@user.id}"
	end

	def show
		@user = User.find(params[:id])
		render :show
	end

	def edit
		@user = User.find(params[:id])
		authorize
			if (@right_person)
				render :edit
			else
				redirect_to "/"
			end
	end

	def update
		user = User.find(params[:id])
		user.update_attributes(user_params)
		redirect_to user
	end

	def destroy
		user = User.find(params[:id])
		logout
		user.destroy
		redirect_to "/"
	end

private
	def user_params
		params.require(:user).permit(:username, :email, :password, :avatar)
	end
end
