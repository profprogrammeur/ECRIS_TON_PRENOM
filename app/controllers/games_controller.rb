class GamesController < ApplicationController
  def index
    # @score = params[:score]
    # @score = session[:score]
    @user = current_user
    g = Game.last
    if  params[:score]
      g.score = params[:score]
    else 
      g.score = 1
    end
    @score = g.score 
    puts "#######################"
    puts "score = #{g.score}"
    g.save
    if @score > 4
      redirect_to(root_path)
    end

    @Words=[]
    name = @user.child_name.upcase
    
    
    @Words.push(name)
    loop do 
      word =  name.chars.shuffle.join
      if word != name
        @Words.push(word)
      end
      break if @Words.count==9
    end
    @Words= @Words.shuffle
    
    
  end
  
  def show
    
  end

 def game1
     @user=current_user
  end

end
