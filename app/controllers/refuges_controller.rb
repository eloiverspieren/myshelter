class RefugesController < ApplicationController
  before_action :set_refuge, only: [:show, :edit, :update, :destroy]
  # GET /refuges
  # GET /refuges.json
  def index
    @refuges = policy_scope(Refuge)
  end

  # GET /refuges/1
  def show
    @refuge = Refuge.find(params[:id])
    @booking = Booking.new
    authorize @refuge
  end

  # GET /refuges/new
  def new
    @refuge = Refuge.new
    authorize @refuge
  end

  # GET /refuges/1/edit
  def edit
    @refuge = Refuge.find(params[:id])
    authorize @refuge
  end

  # POST /refuges
  # POST /refuges.json
  def create
    @refuge = Refuge.new(refuge_params)
    @refuge.user = current_user

    authorize @refuge


    respond_to do |format|
      if @refuge.save
        format.html { redirect_to @refuge, notice: 'Refuge was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /refuges/1
  # PATCH/PUT /refuges/1.json
  def update
    @refuge = Refuge.find(params[:id])
    authorize @refuge
    respond_to do |format|
      if @refuge.update(refuge_params)
        format.html { redirect_to @refuge, notice: 'Refuge was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /refuges/1
  # DELETE /refuges/1.json
  def destroy
    @refuge.destroy
    authorize @refuge
    respond_to do |format|
      format.html { redirect_to refuges_url, notice: 'Refuge was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refuge
      @refuge = Refuge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refuge_params
      params.require(:refuge).permit(:name, :picture, :capacity, :address, :day_price, :description, :lat, :lon, :altitude, :range, :department)
    end
end
