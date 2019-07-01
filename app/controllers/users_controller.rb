class UsersController < ApplicationController
  # before_action :find_user, only: [:edit, :update, :destroy, :show]

  def index
    @all_users = User.all
    @new_user = User.new
  end

  def show
    edit
  end

  def edit
    begin
      @user = User.find(params[:id])
      #@user = User.find(params[:id]) or not_found
    rescue ActiveRecord::RecordNotFound
      render :not_found
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path
    else
      render :not_found
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def create
    @new_user = User.new(user_params)
    if @new_user.save
      redirect_to users_path
    else
      render :index
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end

end
