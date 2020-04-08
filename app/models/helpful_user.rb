class HelpfulUser < ApplicationRecord
    has_many :helpful_items
    has_many :categories, through: :helpful_items
end
