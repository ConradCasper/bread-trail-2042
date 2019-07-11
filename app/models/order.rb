class Order < ApplicationRecord
  belongs_to :survivor
  belongs_to :store
  has_many :order_items, dependent: :destroy

  def add_item(item)
      current_item = order_items.find_by(item_id: item.id)
      if current_item
        current_item.increment(:quantity)
      else
        current_item = order_items.build(item_id: item.id)
    end
    current_item
  end



end
