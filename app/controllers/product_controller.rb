class ProductController < ApplicationController
  def new
  end

  def create
    @product = Stripe::Product.retrieve('prod_KnEXdFjqBgA6Hd')
  end
end
