class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home, :blog]

  def home
    @gift_products = Product.last(4)
    @rand_products = Product.all.sample(4)



  end

  def blog

  end


  def about
    render 'pages/blog/about'
  end
end
