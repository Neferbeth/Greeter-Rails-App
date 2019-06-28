class UsersController < ApplicationController

  def index
    @all_users = User.all
  end

  def new
    @new_user = User.new
  end

  def show
  end

  def create
    @new_user = User.new(users_params)
    if @new_user.save
      redirect_to users_path
    else
      render :new
    end
  end

  private
  def users_params
    params.require(:user).permit(:name)
  end

end
