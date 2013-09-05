class SuppliersController < ApplicationController
  def new
        @user = current_user
        @suppliers = Supplier.all
  end

  def create
  end

  def update
  end

  def edit
  end

  def index
    deny_access unless logged_in?
    @user = User.find(session[:user_id])
    redirect_to items_path
  end

  def show
    # @items = Item.all
    @suppliers = Supplier.all
    @findsupplier = Supplier.find(params[:id])
    @items = @findsupplier.items
    # @finditem = Item.find(params[:id])
    @user = current_user
  end

  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
