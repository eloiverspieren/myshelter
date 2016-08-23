class HikingsController < ApplicationController
  before_action :set_hiking, only: [:show, :edit, :update, :destroy]

  # GET /hikings
  # GET /hikings.json
  def index
    @hikings = policy_scope(Hiking)
  end

  # GET /hikings/1
  # GET /hikings/1.json
  def show
  end

  # GET /hikings/new
  def new
    @hiking = Hiking.new
    authorize @hiking
  end

  # GET /hikings/1/edit
  def edit
  end

  # POST /hikings
  # POST /hikings.json
  def create
    @hiking = Hiking.new(hiking_params)

    respond_to do |format|
      if @hiking.save
        format.html { redirect_to @hiking, notice: 'Hiking was successfully created.' }
        format.json { render :show, status: :created, location: @hiking }
      else
        format.html { render :new }
        format.json { render json: @hiking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hikings/1
  # PATCH/PUT /hikings/1.json
  def update
    respond_to do |format|
      if @hiking.update(hiking_params)
        format.html { redirect_to @hiking, notice: 'Hiking was successfully updated.' }
        format.json { render :show, status: :ok, location: @hiking }
      else
        format.html { render :edit }
        format.json { render json: @hiking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hikings/1
  # DELETE /hikings/1.json
  def destroy
    @hiking.destroy
    respond_to do |format|
      format.html { redirect_to hikings_url, notice: 'Hiking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hiking
      @hiking = Hiking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hiking_params
      params.require(:hiking).permit(:difficulty, :range, :description, :picture)
    end
end
