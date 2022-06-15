class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # def set_order
  #   @order = Order.find_by(complete: false)
  # end
end
