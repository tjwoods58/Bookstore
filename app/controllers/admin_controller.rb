class AdminController < ApplicationController
  layout 'orders'
  def index
    @total_orders = Order.count
  end
end
