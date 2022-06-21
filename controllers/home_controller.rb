class HomeController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  def top
    @user_id = session[:user_id]
    @admin_flg = session[:admin_flg]
    @priority_flg = session[:priority_flg]
    @schedules = Schedule.all.order("schedules.start_at")
    @user_schedules = Schedule.joins(:user_schedules).select("schedules.*, user_schedules.*").order("schedules.start_at")
    @users = User.all
  end
end
