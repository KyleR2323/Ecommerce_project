class SalePrice < ApplicationRecord
  has_many :shoes

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "sale_date", "sale_item", "sale_price", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["shoes"]
  end
end
