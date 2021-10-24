class CreateDinerOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :diner_orders do |t|
      t.references :diner, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
