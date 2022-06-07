class ProductsController < ApplicationController
  before_action :set_product, only: %i[show edit update destroy]
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirct_to product_path(@product)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @order_product = OrderProduct.new
  end

  def index
    @products = Product.all
  end

  def edit

  end

  def update
    if @product.update(product_params)
      redirect_to product_path(@product)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, status: :see_other
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :description, :ingredients, :bottle_size, :manufacturer, :price)
  end

end
