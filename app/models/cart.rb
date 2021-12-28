class Cart < ApplicationRecord
    has_many :products
    
    # def add_item(product_id)
    #     product = Product.where('id = ?', product_id).first
    #     cart = []
    #     if product
    #         cart << product
    #     end
    # end

    # def total_price
    #     products.to_a.sum(&:full_price)
    # end
end
