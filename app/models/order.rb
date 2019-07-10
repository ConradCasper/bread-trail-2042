class Order < ApplicationRecord
  belongs_to :survivor
  belongs_to :store
  has_many :order_items, dependent: :destroy
end
