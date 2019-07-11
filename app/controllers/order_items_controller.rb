class OrderItemsController < ApplicationController
    include CurrentOrder
    before_action :set_order_item, only: [:show, :edit, :update, :destroy]
    before_action :set_order, only: [:create]


    def create
       item = Item.find(params[:item_id]) 
       @order_item = @order.add_item(item)

       respond_to do |format|
            if @order_item.save
                format.html {redirect_to @order_item.order, notice: "Item added to cart." }
                format.json { render :show, status: :created, location: @order_item}
            else
                format.html { render :new }
                format.json { render json: @order_item.errors, status: :unprocessable_entity }
            end
        end
    end


    
end
