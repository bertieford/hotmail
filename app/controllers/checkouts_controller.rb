class CheckoutsController < ApplicationController
  def create
    order = Order.find(params[:order_id])
    checkout  = Checkout.create!(order: order, amount_cents: order.amount, state: 'pending', user: current_user)
    # raise
    order.state = 'complete'
    order.save!
    # checkout.state = 'complete'
    # checkout.save!
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: order.id,
        # images: [teddy.photo_url],
        amount: order.amount_cents,
        currency: 'gbp',
        quantity: 1
      }],
      success_url: checkout_url(checkout), # can change this to go to specific success page
      cancel_url: checkout_url(checkout)

    )

    checkout.update(checkout_session_id: session.id)
    redirect_to new_checkout_payment_path(checkout)
  end

  def show
    @checkout = current_user.checkouts.find(params[:id])
  end
end
