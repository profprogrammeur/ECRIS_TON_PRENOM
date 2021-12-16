class CartsController < ApplicationController
  def index
    
        if current_user.cart.first == nil
         c=Cart.create(user: current_user, category: "chat")
         @category=c.category
      else 
        @category=current_user.cart.last.category
      end
      @gif=GetGif.new.perform(@category)
  end
  
  def show
    
  end

  
  def create
    # current_user.cart.(category: params[:category]).save
        # Item.new(category: "snake").save
          c =  current_user.cart.last
      c.category=params[:category]
       c.save

    redirect_to carts_path 
  end
end
