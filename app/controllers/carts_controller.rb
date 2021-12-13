class CartsController < ApplicationController
  def index
    @carts = Cart.all
        if Item.last == nil
         Item.create(category: "chat")
         @category=Item.last.category
      else 
        @category=Item.last.category
      end
      @gif=GetGif.new.perform(@category)
  end
  
  def show
    
  end

  
  def create
    Item.new(category: params[:category]).save
        # Item.new(category: "snake").save
    redirect_to carts_path 
  end
end
