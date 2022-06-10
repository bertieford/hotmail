class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def index
    @orders = Order.where(user: current_user)
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
  end

  def show
    @orders = Order.where(user: current_user)
    @order = Order.find(params[:id]) # how does show page know which order is the live one?
    @products = @order.products
    @order_products = OrderProduct.all.order('created_at DESC')
  end

  # def add_to_basket
  #   if !current_user.orders.empty?
  #     if current_user.orders.last.complete
  #       create
  #     end
  #   end
  #   @product = Product.find(params[:id])
  #   redirect_to  product_order_products_path(@product)
  # end
    # @product = Product.find(params[:id])
    # fetch the order which is opened
    # will create new order_product and assign it the order id and product id.
    # basket(order with pending status) will render products.all

  private

  def order_params
    params.require(:order).permit(:price)
  end
end
