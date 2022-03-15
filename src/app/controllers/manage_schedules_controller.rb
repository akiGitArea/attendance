class ManageSchedulesController < ApplicationController
  def manage
      # ログ
      logger.debug(exist_schedule_params)

      @schedules = Schedule.find_by(id:params.require(:schedule)[:id])
      if @schedules == nil
            redirect_to manage_schedules_manage_schedule_path
      else
            # スケジュール更新
            if @schedules.update(exist_schedule_params)
                redirect_to manage_schedules_manage_schedule_path
            else
                redirect_to manage_schedules_manage_schedule_path
            end
      end
  end

  private
  def exist_schedule_params
      params.require(:schedule).permit(:start_at, :end_at, :place, :price_all, :price_per, :court_num, :max_join, :explanation)
  end

end
