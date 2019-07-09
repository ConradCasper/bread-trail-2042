class Survivor < ApplicationRecord
    has_many :orders
    has_many :order_items
    has_many :items, through: :order_items

    has_secure_password
    
    validates :username, presence: true, uniqueness: true
end
