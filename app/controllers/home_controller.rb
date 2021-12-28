class HomeController < ApplicationController
  def index
    # @products = Product.all
    @order_item = current_cart.order_items.create # new
  end
end
