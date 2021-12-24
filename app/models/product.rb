class Product < ApplicationRecord

    def self.search(query)
        where("name LIKE ? OR description LIKE ?", "%#{query}%", "%#{query}%") 
    end
end
