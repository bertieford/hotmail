class PaymentsController < ApplicationController
  def new
    @checkout = current_user.checkouts.where(state: 'pending').find(params[:checkout_id])
  end
end
