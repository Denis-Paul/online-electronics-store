class FavoritesController < ApplicationController
  def show
  end

  def index
  end

  def update
    product = Product.find(params[:id])
    favorites = Favorite.where(product_id: product.id, user_id: current_user.id)

    if favorites == []
      Favorite.create!(product_id: product.id, user_id: current_user.id)
      @favorite_exists = true
    else
      favorites.destroy_all
      @favorite_exists = false
    end

    redirect_to shops_url
  end
end
