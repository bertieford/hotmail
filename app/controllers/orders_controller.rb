class OrdersController < ApplicationController

  def new
    @order = Order.new
  end

  def index
    @orders = Order.where(user: current_user, state: 'complete')
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.state = "pending"

    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: @order.id,
        # images: [teddy.photo_url],
        amount: @order.amount_cents,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: order_url(order),
      cancel_url: order_url(order)
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
  end

  def show
    # @order = Order.find_by(complete: false)
    # @orders = Order.where(user: current_user, state: 'pending')
    @order = Order.where(state: "pending").last
    if @order
      @order_products = OrderProduct.where(order_id: @order.id).order('created_at DESC')
    else
      redirect_to nobasket_path
    end
  end

  def myreview
    @order = Order.find(params[:order_id])
    @products = @order.products
    # raise
  end

  private

  def order_params
    params.require(:order).permit(:amount)
  end
end
