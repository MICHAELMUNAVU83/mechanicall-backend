class   Api::V1::EssentialsController < ApplicationController

    skip_before_action :authorized
    def index
        essentials = Essential.all
        render json: essentials
    end

    def show
        essential = Essential.find(params[:id])
        render json: essential
    end

    def create
        essential = Essential.new(essential_params)
        if essential.save
            render json: essential
        else
            render json: {error: "Error creating essential"}
        end
    end


    def destroy
        essential = Essential.find(params[:id])
        essential.destroy
    end

    private

    def essential_params
        params.require(:essential).permit(:latitude, :longitude)
    end


end