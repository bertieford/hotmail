class ReviewsController < ApplicationController
  before_action :set_product, only: [:create]

  def create
    @review = Review.new(review_params)
    # @user = current_user
    # @review.user = @user
    @review.product = @product
    if @review.save
      render product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_product
    @product = Product.find(params[:product_id])
  end
end
