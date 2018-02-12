class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true, numericality: {only_integer:  true, greater_than: 0 }

  before_save :calculateTotal

  def total_price
    product.price * quantity
  end

  private
  def calculateTotal
    self[:total_price] = total_price
  end

end
