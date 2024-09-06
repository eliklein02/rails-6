class UsersController < ApplicationController
  def show
   @id = params[:id]
   @user = User.find(@id)
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email))
    if @user.save
      flash[:notice] = "Article was created successfully"
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(params.require(:user).permit(:name, :email))
      flash[:notice] = "User was successfully updated"
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "User deleted"
      redirect_to users_path
    else
      render @user
    end
  end
  
end