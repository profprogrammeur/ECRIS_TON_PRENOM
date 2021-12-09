class ItemsController < ApplicationController


    def new
    # @animal=Item.last.animal
    puts "####"
 
    puts "####"
    
    # @gif=GetGif.new.perform(@animal)
      @gif=GetGif.new.perform("snake")

    # @gif=GetGif.new.perform(gif_params)
  end

  def create
    # Item.new(category: params[:category]).save
        Item.new(category: "snake").save

    redirect_to root_path 
  end

  def show
    @gif=GetGif.new.perform
  end



end
