class BookingController < ApplicationController
before_action :find_booking, only: [:edit, :update, :show, :destroy]

  def index
    @boookings = current_user.bookings
  end
  
  def new
    @booking = Booking.new
  end

  def edit
  end

  def show
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end
  
  def destroy
    @restaurant.destroy
  end 

private

  def find_booking
   @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:days, :total_price)
  end

end
