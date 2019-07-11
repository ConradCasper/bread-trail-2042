class ApplicationController < ActionController::Base

    include CurrentOrder
    befor_action :set_order
end
