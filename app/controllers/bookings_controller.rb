class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :accept, :reject]
  before_action :set_refuge, except: [:my_bookings, :accept, :reject]
  skip_after_action :verify_policy_scoped, only: :index
  skip_after_action :verify_authorized, only: :my_bookings

  # GET /bookings
  def index
    @bookings = @refuge.bookings
  end

  def my_bookings
    @user = current_user
    @bookings = @user.bookings
    @user.refuges.each do |refuge|
      @bookings += refuge.bookings
    end
  end

  # GET /bookings/1
  def show

  end

  def accept
    @booking.status = 1
    @booking.save
    redirect_to my_bookings_path
  end

  def reject
    @booking.status = 2
    @booking.save
    redirect_to my_bookings_path
  end

  def pay
    @booking.pay
    redirect_to my_bookings_path
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
    authorize @booking
  end

  # POST /bookings
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.refuge = @refuge
    @booking.status = 0
    @booking.amount = @refuge.price
    authorize @booking

    respond_to do |format|
      if @booking.save
        format.html { redirect_to my_bookings_path, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /bookings/1
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to refuge_bookings_path, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
      authorize @booking
    end

    def set_refuge
      @refuge = Refuge.find(params[:refuge_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:start_day, :end_day, :hikers_nb, :user_id, :refuge_id, :status, :payment, :amount)
    end
end
