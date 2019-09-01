class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to @user
    else
      render 'users/new'
    end
  end

  def edit

  end

  def update
  end

  def destroy
  end
  private
  def user_params
    params.require(:user).permit(:name,:student_number,:email,:password,:password_confirmation)
  end
end