class BookingsController < ApplicationController
    #before_action :set_booking

    def new
        @booking = Booking.new
    end
    
    def create
        @booking = Booking.new(booking_params)
        @room = Room.find(@booking.room_id)
        respond_to do |format|
            if (@booking.save) and (@room.available > 0)
                @room.update(available: @room.available -= 1)
                format.html { redirect_to action: 'booked', booking_id: @booking.id }
                format.json { render :show, status: :created, location: @booking }
            else
                format.html { redirect_to root_path }
                format.json { render json: @booking.errors, status: :unprocessable_entity }
            end
        end
    end

    def booked
        @booking = Booking.find(params[:booking_id])
        @room = Room.find(@booking.room_id)
    end

    private
    '''
        def set_booking
            @booking = Booking.find(params[:id])
        end
'''

        def booking_params
            params.require(:booking).permit(:name, :email, :phone_no, :check_in, :check_out, :units, :room_id)
        end
end
