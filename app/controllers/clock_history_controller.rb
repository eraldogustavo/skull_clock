class ClockHistoryController < ApplicationController
  def new
    @clock_history = ClockHistory.new
  end

  def create
    @clock_history = ClockHistory.new(clock_history_params)
    @clock_history.save
  end

  private
    def set_clock_history
      @clock_history = ClockHistory.find(params[:id])
    end

    def clock_history_params
      params.require(:clockhistory).permit(:clock_id, :start_time, :stop_time, :action_type)
    end
end
