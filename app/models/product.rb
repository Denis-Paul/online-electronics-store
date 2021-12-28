class Product < ApplicationRecord
    # belongs_to :category

    scope :search_by_name, ->(query) { where(["lower(name) LIKE ?", "%#{query.downcase}%"]) }
    scope :search_by_description, ->(query) { where(["lower(description) LIKE ?", "%#{query.downcase}%"]) }

    # def self.search(query)
    #     where("lower(name) LIKE ? OR lower(description) LIKE ?", "%#{query.downcase}%", "%#{query.downcase}%") 
    # end
end
