class Api::V1::RestaurantsController < ApiController

    def index
        @restaurants = Restaurant.all
    end

    def create
        @restaurant = Restaurant.create!(restaurant_params)
    rescue Exception => e
        return render json: { message: e.message, status: 422 }
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name, :phone_number, :email)
    end
end