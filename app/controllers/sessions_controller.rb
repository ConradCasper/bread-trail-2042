class SessionsController < ApplicationController

    def new

    end

    def create
        @survivor = Survivor.find_by(username: params[:username])
        if @survivor && @survivor.authenticate(params[:password])
            session[:survivor_id] = @survivor.id
            flash[:info] = "Login Successful!"
            redirect_to survivor_path(@survivor)

        else
            @error = "No such username or password."
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to survivors_path
    end

end