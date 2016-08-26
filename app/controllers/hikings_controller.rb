class HikingsController < ApplicationController
  before_action :set_hiking, only: [:show, :edit, :update, :destroy]

  # GET /hikings
  def index
    @hikings = policy_scope(Hiking)
  end

  # GET /hikings/1
  def show
    @hikings = Hiking.all
    @hiking = Hiking.find(params[:id])

    @review = Review.new
    authorize @hiking


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
  def create
    if current_user.admin?
      @hiking = Hiking.new(hiking_params)
      authorize @hiking

      if @hiking.save
        redirect_to @hiking
      end
    end
  end

  # PATCH/PUT /hikings/1
  def update
    respond_to do |format|
    authorize @hiking
      if @hiking.update(hiking_params)
        format.html { redirect_to @hiking, notice: 'Hiking was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /hikings/1
  def destroy
    if current_user.admin?
      @hiking.destroy
      authorize @hiking
      respond_to do |format|
      format.html { redirect_to hikings_url, notice: 'Hiking was successfully destroyed.' }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hiking
      @hiking = Hiking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hiking_params
      params.require(:hiking).permit(:difficulty, :range, :description, :photo, :photo_cache)
    end
end
