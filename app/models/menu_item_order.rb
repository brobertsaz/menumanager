class MenuItemOrder < ApplicationRecord
  belongs_to :menu_item
  belongs_to :order

  validates :order_id, presence: true
  validates :menu_item_id, presence: true
end
