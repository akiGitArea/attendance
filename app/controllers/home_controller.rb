class HomeController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  def top
    @schedules = Schedule.all
    @user_schedules = Schedule.joins(:user_schedules).select("schedules.*, user_schedules.*")
    @users = User.all
    @user_id = session[:user_id]
    @admin_flg = session[:admin_flg]
  end
end
