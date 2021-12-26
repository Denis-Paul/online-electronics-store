class Product < ApplicationRecord

    def self.search(query)
        where("lower(name) LIKE ? OR lower(description) LIKE ?", "%#{query.downcase}%", "%#{query.downcase}%") 
    end
end
