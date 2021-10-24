class MenuMenuItem < ApplicationRecord
  validates :menu_id, presence: true
  validates :menu_item_id, presence: true
  belongs_to :menu
  belongs_to :menu_item
end
