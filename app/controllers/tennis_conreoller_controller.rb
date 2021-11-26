class TennisConreollerController < ApplicationController
  def new
      @schedules = Schedule.all.order("schedules.start_at")
      @user_schedules = Schedule.joins(:user_schedules).select("schedules.*, user_schedules.*").order("schedules.start_at")
      @users = User.all
      @schedules_add = Schedule.count + 1
  end

  #スケジュール登録
  def create
      # ログ
      logger.debug(params)

      @schedules = Schedule.new(schedule_params)
      # スケジュール登録
      if @schedules.save
          redirect_to root_url
      else
          redirect_to root_url
      end
  end

  #参加不参加変更
  def change
      # ログ
      logger.debug(user_schedule_params)

      @user_schedules = UserSchedule.find_by(id:params.require(:user_schedule)[:id])
      if @user_schedules == nil
            # 個人スケジュール登録
            @user_schedules = UserSchedule.new(insert_user_schedule_params)
            if @user_schedules.save
                redirect_to root_url
            else
                redirect_to root_url
            end
      else
            # 個人スケジュール更新
            if @user_schedules.update(user_schedule_params)
                redirect_to root_url
            else
                redirect_to root_url
            end
      end
  end

  #ユーザー作成
  def create_user
      @users = User.new(user_params)
      # スケジュール登録
      if @users.save
          redirect_to root_url
      else
          redirect_to root_url
      end
  end

  #ユーザー更新
  def update_user
  end

  private
      def schedule_params
          params.require(:schedule).permit(:start_at, :end_at, :place, :price_all, :price_per, :court_num, :max_join, :explanation)
      end

      def user_schedule_params
          params.require(:user_schedule).permit(:id, :user_id, :schedule_id, :join_flg)
      end

      def insert_user_schedule_params
          params.require(:user_schedule).permit(:user_id, :schedule_id, :join_flg)
      end

      def user_params
          params.require(:user).permit(:name, :email, :password, :del_flg, :admin_flg, :priority_flg)
      end

end
