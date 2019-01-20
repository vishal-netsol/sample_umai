class Api::V1::ReservationsController < ApiController

    before_action :load_restaurant
    before_action :load_reservation, only: :update
    def index
        @reservations = @restaurant.reservations
    end

    def create
        @reservation = @restaurant.reservations.create!(reservation_params)
    rescue Exception => e
        return render json: { message: e.message, status: 422 }
    end

    def update
        @reservation.update!(reservation_params)
    rescue Exception => e
        return render json: { message: e.message, status: 422 }
    end

    private
    def load_restaurant
        @restaurant = Restaurant.where(id: params[:restaurant_id]).first
    end

    def load_reservation
        @reservation = @restaurant.reservations.where(id: params[:id]).first
      end

    def reservation_params
        params.require(:reservation).permit(:restaurant_table_id, :guest_id, :restaurant_shift_id, :time, :guest_count) 
    end

end