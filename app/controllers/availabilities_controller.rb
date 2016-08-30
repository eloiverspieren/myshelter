class AvailabilitiesController < ApplicationController
  before_action :set_availability, only: [:show, :edit, :update, :destroy]
  before_action :find_refuge, only: [:new, :edit, :create, :update, :destroy]
  # GET /availabilities
  # GET /availabilities.json
  def index
    @availabilities = policy_scope(Availability)
  end

  # GET /availabilities/1
  # GET /availabilities/1.json
  def show
  end

  # GET /availabilities/new
  def new
    @availability = Availability.new
    authorize @availability
  end

  # GET /availabilities/1/edit
  def edit
  end

  # POST /availabilities
  # POST /availabilities.json
  def create
    @availability = Availability.new(availability_params)
    @availability.refuge = @refuge

    respond_to do |format|
      if @availability.save
        format.html { redirect_to refuge_availabilities_path, notice: 'Availability was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /availabilities/1
  # PATCH/PUT /availabilities/1.json
  def update
    respond_to do |format|
      if @availability.update(availability_params)
        format.html { redirect_to @availability, notice: 'Availability was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /availabilities/1
  # DELETE /availabilities/1.json
  def destroy
    @availability.destroy
    respond_to do |format|
      format.html { redirect_to availabilities_url, notice: 'Availability was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_availability
      @availability = Availability.find(params[:id])
    end

     def find_refuge
    @refuge = Refuge.find(params[:refuge_id])
     end


    # Never trust parameters from the scary internet, only allow the white list through.
    def availability_params
      params.require(:availability).permit(:start_day, :end_day, :capacity, :refuge_id)
    end
end







