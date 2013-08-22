module SessionsHelper

	def log_in user
		session[:user_id] = user.id
		self.current_user = user
	end

	# setter method
	def current_user= user
		@current_user = user
	end

	# getter method
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

	# NOTE: why not attr_accessor :current_user?

	def logged_in?
		!current_user.nil?
	end

	def log_out
		session[:user_id] = nil
		self.current_user = nil
	end

	def current_user? user
		user == current_user
	end

	def deny_access
		redirect_to new_session_path, :alert => "Please log in to access this page."
	end

end
