class ProductsController < ApplicationController

  def new

  end

  def create

  end

  def show

  end

  def index

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :ingredients, :bottle_size, :manufacturer, :price)
  end

end
