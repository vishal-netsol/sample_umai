class Api::V1::GuestsController < ApiController

    def index
        @guests = Guest.all
    end

    def create
        @guest = Guest.create!(guest_params)
    rescue Exception => e
        return render json: { message: e.message, status: 422 }
    end

    private

    def guest_params
        params.require(:guest).permit(:name, :email)
    end

end