class Menu < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :menu_items
  belongs_to :restaurant
end
