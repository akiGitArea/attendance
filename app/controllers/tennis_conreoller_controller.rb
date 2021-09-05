class TennisConreollerController < ApplicationController
  def new
      @schedules = Schedule.new
  end

  def create
      logger.debug(params)
      @schedules = Schedule.new(schedule_params)
      if @schedules.save
          redirect_to root_url
      else
          redirect_to root_url
      end
  end

  private
      def schedule_params
          params.require(:schedule).permit(:start_at, :end_at, :place, :price_all, :price_per, :court_num, :explanation)
      end
end
