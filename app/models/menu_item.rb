class MenuItem < ApplicationRecord
  has_many :menu_menu_items
  has_many :menus, through: :menu_menu_items

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
end
