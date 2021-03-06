module SessionsHelper

	def login(user)
		session[:user_id] = user.id
		@current_user = user
		@logged_in = true
	end

	def current_user
		@current_user ||= session[:user_id] && User.find(session[:user_id])
	end

	def logged_in?
		if @current_user == nil
	  		@logged_in = false
	  	else
	  		@logged_in = true
		end
	end

	def logout
		@current_user = session[:user_id] = nil
	end

	def authorize
		if @current_user == User.find(params[:id])
			@right_person = true
		else 
			@right_person = false
		end
	end
end
