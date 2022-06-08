class OrderProductsController < ApplicationController

  def create

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

    @product = Product.find(params[:product_id])

    @order_product = OrderProduct.new
    @order_product.product = @product
    @order_product.order = @order

    if @order_product.save!
      redirect_to products_path  # can make this more intelligent later
    else
      render "products" # can check / amend this later
    end
  end

  private
  def order_product_params
    params.require(order_product).permit(:order_id, :product_id)
  end

end
