class ApplicationController < ActionController::Base
    skip_forgery_protection

    include ApplicationHelper
    # before_action :authenticate_user! , except: [:home]

    # def current_cart
    #     if session[:cart_id]
    #       @current_cart ||= Cart.find(session[:cart_id])
    #     end
    #     if session[:cart_id].nil?
    #       @current_cart = Cart.create!
    #       session[:cart_id] = @current_cart.id
    #     end
    #     @current_cart
    # end

    def favorite_text
        return @favorite_exists ? "Remove from Favorites" : "Add to Favorites"
    end

    helper_method :favorite_text
end
