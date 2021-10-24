class Order < ApplicationRecord
  belongs_to :diner

  has_many :diner_orders
  has_many :orders, through: :diner_orders

   validates :total, presence: true
end
