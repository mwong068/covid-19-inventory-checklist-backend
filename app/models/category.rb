class Category < ApplicationRecord
    has_many :helpful_items
    has_many :helpful_users, through: :helpful_items
end
