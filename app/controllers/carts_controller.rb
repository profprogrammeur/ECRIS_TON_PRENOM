class CartsController < ApplicationController
  def index
    @carts = Cart.all
    
      
    # @gif=GetGif.new.perform("snake")
  end

  def create
  
  end
  
  
end
