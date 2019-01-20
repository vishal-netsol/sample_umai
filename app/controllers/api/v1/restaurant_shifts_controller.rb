class Api::V1::RestaurantShiftsController < ApiController

    before_action :load_restaurant, only: [:index, :create]
    def index
        @tables = @restaurant.restaurant_shifts
    end

    def create
        @table = @restaurant.restaurant_shifts.create!(restaurant_shift_params)
    rescue Exception => e
        return render json: { message: e.message, status: 422 }
    end

    private

    def load_restaurant
        @restaurant = Restaurant.where(id: params[:restaurant_id]).first
    end

    def restaurant_shift_params
        params.require(:restaurant_shift).permit(:shift, :start_time, :end_time)
    end

end