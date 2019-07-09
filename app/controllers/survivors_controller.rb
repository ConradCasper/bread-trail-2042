class SurvivorsController < ApplicationController

    def show
        @survivor = Survivor.find(params[:id])
    end
    
end
