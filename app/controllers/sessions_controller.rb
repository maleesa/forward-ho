class SessionsController < ApplicationController
  def new
  end

  def create
  	# render text: params
  	user = User.find_by(email: params[:session][:email]).try(:authenticate, params[:session][:password])
  	# user = User.authenticate(params[:session][:email], params[:session][:password])
	if user == false || user.nil?
		flash.now[:error] = "Invalid email/password combination."
		redirect_to new_user_path, :flash => { :error => 'Email and password don\'t match.' }
	else
		log_in user
		redirect_to users_path
	end
  end

  def destroy
  	log_out
  	redirect_to new_session_path
  end
end