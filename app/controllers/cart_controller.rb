class CartController < ApplicationController
  def show
    # @cart = current_cart
    @order_items = current_cart.order_items
  end

  # def add_to_cart
  #     current_cart.add_item(params[:product_id])
  #     redirect_to carts_path(current_cart.id)
  # end
end
