class Menu < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :menu_menu_items
  has_many :menu_items, through: :menu_menu_items
  belongs_to :restaurant
end
