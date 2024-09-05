class UsersController < ApplicationController
  def show
   @id = params[:id]
   @user = User.find(@id)
  end
  def index
    @users = User.all
  end

  def new

  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email))
    @user.save
    redirect_to @user
  end

  
end