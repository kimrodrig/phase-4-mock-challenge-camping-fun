class SignupsController < ApplicationController

    def create
        render json: Signup.create!(params.permit(:time, :camper_id, :activity_id)).activity, status: :created
    end
end
