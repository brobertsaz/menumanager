class DinerOrder < ApplicationRecord
  belongs_to :diner
  belongs_to :order

  validates :diner_id, presence: true
  validates :order_id, presence: true
end
