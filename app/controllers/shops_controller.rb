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
  end
end
