class ShopsController < ApplicationController
  def index
    if params[:filter]
      @products = Product.where(category:params[:filter])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
    @favorite_exists = Favorite.where(product_id: @product.id, user_id: current_user.id) == [] ? false : true
  end
end
