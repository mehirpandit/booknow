class BookingsController < ApplicationController
   
   def index
        @bookings = Booking.all

  end


  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
     @booking = Booking.new(booking_params)   
    if @booking.save
    	      redirect_to @booking   # Handle a successful save.
    else
      render 'new'
    end
  end
def edit
    @booking = Booking.find(params[:id])
  end
private

    def booking_params
      params.require(:booking).permit(:tickets, :price)
    end

end
