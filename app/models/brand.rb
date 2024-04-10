class Brand < ApplicationRecord
  has_many :shoes

  validates :brand_name, presence: true, uniqueness: true

  def self.ransackable_attributes(auth_object = nil)
    ["brand_name", "created_at", "id", "id_value", "updated_at"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["shoes"]
  end
end
