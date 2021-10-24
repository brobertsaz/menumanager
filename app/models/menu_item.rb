class MenuItem < ApplicationRecord
  has_many :menu_menu_items
  has_many :menus, through: :menu_menu_items

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true

  enum item_type: { entree: 0, appetizer: 1, side: 2 }
  validates :item_type, inclusion: { in: item_types.keys }
end
