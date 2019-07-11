class OrdersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with :invalid_order
    before_action :set_cart, only: [:show, :edit, :update, :destroy]


    def index
        @orders = Order.all
    end


    def show
    end

    def new
        @order = Order.new
    end

    def edit
    end

    def destroy
        @order.destroy if @order.id == session[:order_id]
        session[:order_id] = nil
        respond_to do |format|
            format.html {redirect_to orders_url, notice: 'Order was successfully destroyed'}
            format.json {head :no_content}
    end



    
    
    private

    def set_order
        @order = Order.find(params[:id])
    end

    def order_params
        params.fetch(:order, {})
    end


    def invalid_order
        logger.error "Attempt to access invalid order #{params[:id]}"

        redirect_to root_path, notice: "That order doesn't exist"
    end
    

end
