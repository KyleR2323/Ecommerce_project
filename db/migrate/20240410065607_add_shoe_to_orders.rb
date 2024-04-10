class AddShoeToOrders < ActiveRecord::Migration[7.1]
  def change
    add_reference :orders, :shoe, null: false, foreign_key: true
  end
end
