class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def delete
    @user = User.find_by_id(params[:id])
    @user.destroy
    redirect_to users_path, :notice => "User deleted"
  end
end
