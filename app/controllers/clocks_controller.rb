class ClocksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_clock, only: %i[ show edit update destroy ]

  # GET /clocks
  def index
    @clocks = Clock.all
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
    if @clock.update(clock_params)
      redirect_to @clock, notice: "Clock was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /clocks/1
  def destroy
    @clock.destroy
    redirect_to clocks_url, notice: "Clock was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock
      @clock = Clock.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clock_params
      params.fetch(:clock, {})
    end
end