class Order < ApplicationRecord
  belongs_to :user
  belongs_to :shoe
  has_many :order_items

  validates :total_amount, :subtotal, presence: true
  validates :pst, :gst, :hst, :total_amount, numericality: { greater_than_or_equal_to: 0}

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "gst", "hst", "id", "id_value", "pst", "shoe_id", "subtotal", "total_amount", "updated_at", "user_id"]
  end
end
