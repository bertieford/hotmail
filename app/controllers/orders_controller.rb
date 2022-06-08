class OrdersController < ApplicationController
 before_action :set_order, only: [:show]

  def new
    @order = Order.new
  end

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
  end

  def show
    @products = @order.products
  end

  def add_to_basket
    unless current_user.order
      @order = Order.create(user_id: current_user.id)
    end
    # @product = Product.find(params[:id])
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:price)
  end
end
