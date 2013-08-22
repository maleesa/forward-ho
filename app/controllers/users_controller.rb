class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      redirect_to users_url, :notice => "#{@user.first_name} Registered!"
    else
      render :new
    end
  end

  def show
    deny_access unless logged_in?
    @user = User.find(params[:id])
  end

  def dashboard
  end

  def index
    deny_access unless logged_in?
    # @users = User.all
    @user = User.find(session[:user_id])
    redirect_to dashboard_path
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
