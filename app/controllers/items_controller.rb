class ItemsController < ApplicationController

  def index
      category=Cart.last.category
      @gif=GetGif.new.perform(category)
    # @gif=GetGif.new.perform("snake")
  end

  def new

  end

  def create
    Item.new(category: params[:category]).save
        # Item.new(category: "snake").save
    redirect_to items_path 
  end

  def show
    @gif=GetGif.new.perform
  end

  
end
