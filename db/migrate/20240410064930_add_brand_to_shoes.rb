class AddBrandToShoes < ActiveRecord::Migration[7.1]
  def change
    add_reference :shoes, :brand, null: false, foreign_key: true
  end
end