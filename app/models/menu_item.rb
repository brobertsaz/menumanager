class MenuItem < ApplicationRecord
  # belongs_to :menu
  belongs_to :restaurant
  validates :menu_id, presence: true
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
end
