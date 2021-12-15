class CartsController < ApplicationController
  def index

    @cart_gif= current_user.cart.last.items
    
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


  def update

    puts "3333333333333333333333333333"
    puts params[:id]
    puts params[:gif_url]
    puts "333333333333333333333333333333"

   i = Item.create(url: params[:gif_url])
    current_user.cart.last.items.first.delete
   i.save
   JoinTableCartItem.create(cart_id: current_user.cart.last.id, item_id: i.id)
   
        


  end

end
