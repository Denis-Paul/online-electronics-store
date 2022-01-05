class Product < ApplicationRecord
    has_many :order_items

    has_many :favorites
    has_many :users, through: :favorites

    scope :search_by_name, ->(query) { where(["lower(name) LIKE ?", "%#{query.downcase}%"]) }
    scope :search_by_description, ->(query) { where(["lower(description) LIKE ?", "%#{query.downcase}%"]) }

    def self.search(query)
        search_by_name(query) || search_by_description(query) 
    end
end
