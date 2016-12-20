class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "#{@user.name} created!"
      redirect_to user_path(@user)
    else
      flash.now[:danger] = "#{@user.name} could not be created."
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end


end