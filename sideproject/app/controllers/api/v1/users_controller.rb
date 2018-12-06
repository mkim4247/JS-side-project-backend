class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def update
    @user.update(user_params)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :wins)
  end

end
