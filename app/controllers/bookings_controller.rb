class BookingsController < ApplicationController

before_action :find_booking, only: [:edit, :update, :show, :destroy]


  def index
    @bookings = policy_scope(Booking)
  end

  def new
    @booking = Booking.new
    @item = Item.find(params[:item_id])
    authorize @booking
  end

  def edit
  end

  def show
    booking = Booking.find(params[:id])
    @booking.days = (booking.date_to - booking.date_from)
    total_price = @booking.total_price
  end

  def create
    @booking = Booking.new(booking_params)
    @item = Item.find(params[:item_id])
    @booking.item = @item
    @booking.user = current_user
    @booking.days = (@booking.date_to - @booking.date_from)
    @booking.total_price = (@booking.days * @item.price).to_f
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'items/show'
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
   authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:date_from, :date_to)
  end

end
