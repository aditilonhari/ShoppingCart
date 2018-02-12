class OrderController < ApplicationController
  @@counter = 0
  @@Order = nil

  def show
    @order_items = OrderItem.all
  end

  def add_to_order

      current_product = Product.find(params[:id])
      @@counter += 1

      OrderItem.create!(id: @@counter, product: current_product, quantity: 1, order_id: current_order.id)

      redirect_to order_show_url
  end
end
