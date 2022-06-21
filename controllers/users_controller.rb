class UsersController < ApplicationController
  before_action :already_login?, only: [:new, :create]
  before_action :login?, only: :show
  def new
    @user = User.new
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:usersname, :password, :password_confirmation)
  end
end
