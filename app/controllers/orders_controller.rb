class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @order = current_user.orders.new(order_params)
    @order.total_price = @order.quantity * @order.price
    @order.save
    redirect_to user_orders_path(current_user)
  end

  def user_orders
    @orders = current_user.orders
  end

  private
  def order_params
    params.require(:order).permit(:quantity, :price, :total_price, :service_id)
  end
end
