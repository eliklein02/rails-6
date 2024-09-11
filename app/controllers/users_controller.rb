class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update, :destroy]
  before_action :require_user, only: %i[ edit, update, destroy]
  before_action :require_same_user, only: %i[ update, destroy, edit]


  def show
    @articles = @user.articles
  end

  def index
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome #{@user.name}"
      redirect_to articles_path
      session[:user_id] = @user.id
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "User was successfully updated"
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    if @user.destroy && !@user.admin?
      session[:user_id] = nil if @user == current_user
      flash[:notice] = "User deleted"
      redirect_to users_path
    else
      render @user
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end
  
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  def require_same_user
    if current_user != @user
      flash[:alert] = "You are not authorized"
      redirect_to users_path
    end
  end
  
end