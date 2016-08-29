class PaymentsController < ApplicationController
  before_action :set_booking

  def new
    authorize(:payment)
  end

  def create
    authorize(:payment)
    @amount_cents = @booking.amount_cents

    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @booking.amount_cents, # in cents
      description:  "Payment for reservation #{@booking.refuge} for order #{@booking.id}",
      currency:     'eur'
    )

    @booking.pay
    redirect_to my_bookings_path

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_booking_payment_path(@booking)
  end


private

  def set_booking
    @booking = Booking.where(status: 1).find(params[:booking_id])
  end
end
