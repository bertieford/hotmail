class OrdersController < ApplicationController
 before_action :set_order, only: [:show]

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
  end

  def show
    @products = Product
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:price)
  end
end
