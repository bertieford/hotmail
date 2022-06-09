class OrderProductsController < ApplicationController
  before_action :set_order_product, only: %i[edit update destroy]

  def show
    @order_product = OrderProduct.find(params[:id])
  end

  def edit

  end

  def update

  end

  def create
    # DEFINING THE ORDER
    if !current_user.orders.empty?
      if current_user.orders.last.complete
        @order = Order.new
        @order.price = "price goes here"
        @order.user = current_user
        @order.save!
      else
        @order = current_user.orders.last
      end
    else
      @order = Order.new
      @order.price = "price goes here"
      @order.user = current_user
      @order.save!
    end
    # DEFINING THE PRODUCT
    @product = Product.find(params[:product_id])
    # ASSIGNING THE ORDER AND THE PRODUCT TO A NEW INSTANCE OF ORDER_PRODUCT
    @order_product = OrderProduct.new
    @order_product.product = @product
    @order_product.order = @order
    # SAVING THE ORDER_PRDOUCT AND REDIRECTING
    if @order_product.save!
      redirect_to products_path  # can change where this goes.. or also makes basket pop-out float
    else
      render "products" # can check / amend this
    end
  end

  def destroy
    @orders = Order.where(user: current_user)
    @order = Order.find(params[:id])
    @order_product.destroy
    redirect_to order_path, status: :see_other
  end

  private

  def set_order_product
    @order_product = OrderProduct.find(params[:id])
  end
end
