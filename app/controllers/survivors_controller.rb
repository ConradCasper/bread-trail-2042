class SurvivorsController < ApplicationController

    def show
        @survivor = Survivor.find(params[:id])
    end

    def new
        @survivor = Survivor.new
    end

    def create
        @survivor = Survivor.new(survivor_params)

        if @survivor.save 
            redirect_to login_path
        else
            render :new
        end

    end







    private


    def survivor_params
        params.require(:survivor).permit(:name, :username, :grain, :password, :image_url)
    end

        
    
end
