class AddTaxToRegions < ActiveRecord::Migration[7.1]
  def change
    add_column :regions, :gst, :decimal
    add_column :regions, :pst, :decimal
    add_column :regions, :hst, :decimal
  end
end
