class CampersController < ApplicationController
    def index
        render json: Camper.all
    end

    def show
        render json: find_camper, status: :ok, serializer: ShowCamperSerializer
    end

    def create
        render json: Camper.create!(camper_params), status: :created
    end

    private

    def find_camper
        Camper.find(params[:id])
    end

    def camper_params
        params.permit(:name, :age)
    end
end
