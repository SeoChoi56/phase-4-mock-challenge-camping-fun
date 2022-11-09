class ActivitiesController < ApplicationController

    # before_action :findActivity

    def index
        render json: Activity.all, status: :ok
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        head :no_content
    end

    private 

    # def findActivity
    #     @activity = Activity.find(params[:id])
    # end
end
