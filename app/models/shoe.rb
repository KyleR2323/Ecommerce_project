class Shoe < ApplicationRecord
  validates :shoe_type, :price, :shoe_model, :size, :gender, :material, :quantity_available, presence: true

  belongs_to :brand
  belongs_to :sale_price
  has_many :orders

  def self.ransackable_attributes(auth_object = nil)
    ["color", "created_at", "description", "gender", "id", "id_value", "material", "price", "quantity_available", "shoe_model", "shoe_type", "size", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["brand", "sale_price", "orders"]
  end

  has_one_attached :image
end
