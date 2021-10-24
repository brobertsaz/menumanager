class AddItemTypeToMenuItems < ActiveRecord::Migration[6.1]
  def change
    add_column :menu_items, :item_type, :integer
  end
end
