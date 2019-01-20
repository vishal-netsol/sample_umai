class Api::V1::RestaurantTablesController < ApiController

    before_action :load_restaurant, only: [:index, :create]
    def index
        @tables = @restaurant.restaurant_tables
    end

    def create
        @table = @restaurant.restaurant_tables.create!(restaurant_table_params)
    rescue Exception => e
        return render json: { message: e.message, status: 422 }
    end

    private

    def load_restaurant
        @restaurant = Restaurant.where(id: params[:restaurant_id]).first
    end

    def restaurant_table_params
        params.require(:restaurant_table).permit(:name, :min_seats, :max_seats)
    end

end