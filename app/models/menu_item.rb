class MenuItem < ApplicationRecord
  belongs_to :menu
  validates :menu_id, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
