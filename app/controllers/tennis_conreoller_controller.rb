class TennisConreollerController < ApplicationController
  def new
      @schedules = Schedule.new
      @user_schedules = Schedule.joins(:user_schedules).select("schedules.*, user_schedules.*")
      # @user_names = UserSchedule.joins(:users).select("user_schedules.*, users.*")
      @users = User.all
  end

  #スケジュール登録
  def create
      # ログ
      logger.debug(params)

      @schedules = Schedule.new(schedule_params)
      # スケジュール登録
      if @schedules.save
          # ユーザ毎のスケジュール情報登録
          @users = User.all
          @users.each do |users|
            @user_schedules = UserSchedule.new()
            @user_schedules.user_id = users.id
            @user_schedules.schedule_id = @schedules.id
            @user_schedules.join_flg = false
            @user_schedules.save
          end
          redirect_to root_url
      else
          redirect_to root_url
      end
  end

  #参加不参加変更
  def change
      # ログ
      logger.debug(user_schedule_params)

      @user_schedules = UserSchedule.find(params.require(:user_schedule)[:id])
      # スケジュール登録
      if @user_schedules.update(user_schedule_params)
          redirect_to root_url
      else
          redirect_to root_url
      end
  end

  private
      def schedule_params
          params.require(:schedule).permit(:start_at, :end_at, :place, :price_all, :price_per, :court_num, :explanation)
      end

      def user_schedule_params
          params.require(:user_schedule).permit(:id, :user_id, :schedule_id, :join_flg)
      end

end
