class ItemsController < ApplicationController


    def new
    @category=Item.last.category
    # @animal="koala"
    puts "####"
 
    puts "####"
    
    @gif=GetGif.new.perform(@category)
      # @gif=GetGif.new.perform("snake")

    # @gif=GetGif.new.perform(gif_params)
  end

  def create
    Item.new(category: params[:category]).save
        # Item.new(category: "snake").save

    redirect_to root_path 
  end

  def show
    @gif=GetGif.new.perform
  end



end
