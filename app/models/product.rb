class Product < ApplicationRecord
    # belongs_to :category
    has_many :order_items

    scope :search_by_name, ->(query) { where(["lower(name) LIKE ?", "%#{query.downcase}%"]) }
    scope :search_by_description, ->(query) { where(["lower(description) LIKE ?", "%#{query.downcase}%"]) }

    def self.search(query)
        search_by_name(query) || search_by_description(query) 
    end
end
