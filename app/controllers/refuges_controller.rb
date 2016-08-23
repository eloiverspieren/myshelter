class RefugesController < ApplicationController
  before_action :set_refuge, only: [:show, :edit, :update, :destroy]

  # GET /refuges
  # GET /refuges.json
  def index
    @refuges = policy_scope(Refuge)
  end

  # GET /refuges/1
  # GET /refuges/1.json
  def show
  end

  # GET /refuges/new
  def new
    @refuge = Refuge.new
    authorize @profile
  end

  # GET /refuges/1/edit
  def edit
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
        format.json { render :show, status: :created, location: @refuge }
      else
        format.html { render :new }
        format.json { render json: @refuge.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /refuges/1
  # PATCH/PUT /refuges/1.json
  def update
    respond_to do |format|
      if @refuge.update(refuge_params)
        format.html { redirect_to @refuge, notice: 'Refuge was successfully updated.' }
        format.json { render :show, status: :ok, location: @refuge }
      else
        format.html { render :edit }
        format.json { render json: @refuge.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /refuges/1
  # DELETE /refuges/1.json
  def destroy
    @refuge.destroy
    respond_to do |format|
      format.html { redirect_to refuges_url, notice: 'Refuge was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_refuge
      @refuge = Refuge.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refuge_params
      params.require(:refuge).permit(:name, :picture, :capacity, :address, :day_price, :description, :lat, :lon, :altitude, :range)
    end
end
