class ItemsController < ApplicationController

  def index
  
      @gif=GetGif.new.perform(params[:id])
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
