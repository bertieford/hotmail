class OrderProductsController < ApplicationController
  before_action :set_order_product, only: %i[edit update destroy]

  # def show
  #   @order_product = OrderProduct.find(params[:id])
  #   # @order = Order.find(params[:order_id])
    # redirect_to order_path, status: :see_other
  # end

  def edit

  end

  def update
    if params[:commit] == "UP"
      @order_product.qty += 1
      @order_product.save
      redirect_to order_path(@order_product.order)
    elsif params[:commit] == "DOWN"
      @order_product.qty -= 1
      @order_product.save
      redirect_to order_path(@order_product.order)
    end
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
    # EXPLORING IF PRODUCT ALREADY EXISTS IN AN ORDER PRODUCT BELONGING TO THIS ORDER.
    @order_product = OrderProduct.new
    @order_product.product = @product
    @order_product.order = @order
    # SAVING THE ORDER_PRDOUCT AND REDIRECTING
    if @order_product.save
      redirect_to products_path  # can change where this goes.. or also makes basket pop-out float
    else
      the_order = OrderProduct.where(product_id: @product.id).and(OrderProduct.where(order_id: @order.id))
      the_order.first.qty += 1
      the_order.first.save
      redirect_to order_path(@order)
    end
      # ASSIGNING THE ORDER AND THE PRODUCT TO A NEW INSTANCE OF ORDER_PRODUCT
  end

  def destroy
    @order_product.destroy!
    redirect_to order_path, status: :see_other
  end

  private

  def set_order_product
    @order_product = OrderProduct.find(params[:id])
  end
end
