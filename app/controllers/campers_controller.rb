class CampersController < ApplicationController

    def index
        render json: Camper.all, status: :ok
    end

    def show
        camper = Camper.find(params[:id])
        render json: camper, serializer: CampersWithActivitiesSerializer, status: :ok
    end

    def create 
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end

    private

    def camper_params
        params.permit(:id, :name, :age)
    end

end
