class GamesController < ApplicationController
  def index
    # @score = params[:score]
    # @score = session[:score]
    @user = current_user
    g = Game.last
    # g.score = @score
    g.save


    
    
  end
  
  def show
    
  end

 def game1
     @user=current_user
  end

end
