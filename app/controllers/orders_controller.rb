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
    if !current_user.orders.empty?
      if current_user.orders.last.complete
        create
      end
    end
    # raise
    @product = Product.find(params[:id])
    redirect_to  product_order_products_path(@product)
  end
    # @product = Product.find(params[:id])
    # fetch the order which is opened
    # will create new order_product and assign it the order id and product id.
    # basket(order with pending status) will render products.all

  private
  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:price)
  end
end
