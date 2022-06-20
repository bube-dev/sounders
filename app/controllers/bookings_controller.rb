class BookingsController < ApplicationController
    def new
        @booking = Booking.new
    end
    
    def create
        @booking = Booking.new(booking_params)
    
        respond_to do |format|
            if @booking.save
                format.html { redirect_to action: 'booked' }
                format.json { render :show, status: :created, location: @booking }
            else
                format.html { render :booked }
                format.json { render json: @booking.errors, status: :unprocessable_entity }
            end
        end
    end

    def booked
    end

    private
        def booking_params
            params.permit(:name, :email, :phone_no, :check_in, :check_out, :units, :room_type)
        end
end
