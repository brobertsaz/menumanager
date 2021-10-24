class Order < ApplicationRecord
  belongs_to :diner

  has_many :diner_orders
  has_many :diners, through: :diner_orders
  has_many :menu_item_orders
  has_many :menu_items, through: :menu_item_orders

  validates :total, presence: true
end
