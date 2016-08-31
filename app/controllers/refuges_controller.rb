class RefugesController < ApplicationController
  skip_before_action :authenticate_user!, only:[:index, :show]
  skip_after_action :verify_authorized, only:[:index, :show]
  before_action :set_refuge, only: [:show, :edit, :update, :destroy]
  skip_after_action :verify_authorized, only: :my_refuges
  # GET /refuges
  # GET /refuges.json
  def index
    @refuges = policy_scope(Refuge).search(params[:search]).where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@refuges) do |refuge, marker|
      marker.lat refuge.latitude
      marker.lng refuge.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
      authorize @refuges
    end
  end

  def my_refuges
    @user = current_user
    @refuges = @user.refuges
  end
  # GET /refuges/1
  def show
    date_killer
    @availability = Availability.new
    @availabilities = Availability.all
    @refuges = Refuge.all
    @refuge = Refuge.find(params[:id])
    @refuge_coordinates = { lat: @refuge.latitude, lng: @refuge.longitude }

    @booking = Booking.new
    @review = Review.new
    authorize @refuge

    @refuge_coordinates = { lat: @refuge.latitude, lng: @refuge.longitude }

    @hash = Gmaps4rails.build_markers(@refuge) do |refuge, marker|
      marker.lat refuge.latitude
      marker.lng refuge.longitude
    end
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
  def create
    @refuge = Refuge.new(refuge_params)
    @refuge.user = current_user
    authorize @refuge

    if @refuge.save
        redirect_to @refuge
    else
      render :new
    end
  end

  # PATCH/PUT /refuges/1
  # PATCH/PUT /refuges/1.json
  def update
    @refuge.update(refuge_params)

    if @refuge.save
      redirect_to @refuge
    else
      render :edit
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
     authorize @refuge
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def refuge_params
      params.require(:refuge).permit(:name, :photo, :photo_cache, :capacity, :address, :description, :lat, :lon, :altitude, :range, :department, :price_cents)
    end



    def date_killer
    @availabilities = []
    @availabilities_formatted = []
    if Availability.all
      Availability.all.each do |availability|
        if availability.start_day && availability.end_day
          date = availability.start_day
          while date.strftime("%m/%d/%Y") <= availability.end_day.strftime("%m/%d/%Y")
            @availabilities << date.strftime("%m/%d/%Y")
            date += 1.day
          end
        end
      end
    end
  end
end
