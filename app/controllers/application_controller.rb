class ApplicationController < ActionController::Base
  before_action :authenticate_user!, :set_order

  def set_order
    @order = Order.find_by(complete: false)
  end
end
