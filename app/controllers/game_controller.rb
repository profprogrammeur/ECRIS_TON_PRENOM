class GameController < ApplicationController
  def show
    @game = Game.find(params[:user.id])
  end
  
end
