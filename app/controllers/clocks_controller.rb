require 'csv'

class ClocksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_clock, only: %i[ show edit update destroy ]

  # GET /clocks
  def index
    @clocks = Clock.all
    # @clocks = @clocks.where(user_id: current_user.id)
    @clocks = @clocks.where(user_id: current_user.id, deleted_at: nil)
    # @clocks = Clock.where("user_id = ? AND id = ?", current_user.id, params[:id]).all
  end

  # GET /clocks/1
  def show
  end

  # GET /clocks/new
  def new
    @clock = Clock.new
  end

  # GET /clocks/1/edit
  def edit
  end

  # POST /clocks
  def create
    @clock = Clock.new(clock_params)

    if @clock.save
      redirect_to @clock, notice: "Clock was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /clocks/1
  def update
    message = "Clock was successfully updated."
    
    if params[:deleted_at] != nil
      message = "Clock was successfully destroyed." 
    end

    if @clock.update(clock_params)
      redirect_to @clock, notice: message
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /clocks/1
  def destroy
    @clock.destroy
    redirect_to clocks_url, notice: "Clock was successfully destroyed."
  end

   # EXPORT
  def export
    @clocks = Clock.all
    @clocks = @clocks.where(user_id: current_user.id, deleted_at: nil)

    respond_to do |format|
      format.csv do
        response.headers["Content-Type"] = 'text/csv'
        response.headers["Content-Disposition"] = 'attachment; filename=clock_history.csv'
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock
      @clock = Clock.where("user_id = ? AND id = ?", current_user.id, params[:id]).first

      rescue ActiveRecord::RecordNotFound => e
        redirect_to clocks_path, notice: "Clock not found!"
    end

    # Only allow a list of trusted parameters through.
    def clock_params
      params.require(:clock).permit(:user_id, :start_time, :stop_time, :label, :deleted_at)
    end

end
