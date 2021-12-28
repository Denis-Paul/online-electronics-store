module ApplicationHelper
    def current_cart
        if Order.find_by_id(session[:order_id]).nil?
            Order.create! # new
        else
            Order.find_by_id(session[:order_id])
        end
    end
end
