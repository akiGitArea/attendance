class HomeController < ApplicationController
  before_action :logged_in_user, only:[:edit, :update, :destroy]
  def top
    @user_id = session[:user_id]
    @admin_flg = session[:admin_flg]
    @schedules = Schedule.all.order("schedules.start_at")
    @user_schedules = Schedule.joins(:user_schedules).select("schedules.*, user_schedules.*").order("schedules.start_at")
    # @user_schedules_per = Schedule.left_joins(:user_schedules).select("schedules.*, user_schedules.*").order("schedules.start_at").where(user_schedules: { user_id: @user_id })
    @users = User.all
  end
end
