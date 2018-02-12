class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order
  helper_method :current_customer

  def current_order
      Order.first
      p "First order"
      p Order.first
  end

  def current_customer
     Customer.new(firstname: "John", lastname: "Doe")
  end
end
