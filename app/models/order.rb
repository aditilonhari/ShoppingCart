class Order < ApplicationRecord
  #belongs_to :order_status
  has_many :order_items
  #before_create :set_order_status
  before_save :update_subtotal

  def subtotal
    order_items.collect {|item|
      unit_price = Product.find(item.product_id).price
      item.valid? ? (item.quantity * unit_price) : 0
    }.sum
  end

  private
  # def set_order_status
  #   self.order_status_id=1
  # end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
