class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
  @category=Item.last.category
  @gif=GetGif.new.perform(@category)
    # @gif=GetGif.new.perform("snake")
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
