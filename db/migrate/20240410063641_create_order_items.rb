class CreateOrderItems < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
      t.integer :quantity
      t.decimal :item_price

      t.timestamps
    end
  end
end
