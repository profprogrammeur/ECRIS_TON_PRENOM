class UsersController < ApplicationController
  
  def index
    @user = User.all
  end
  
  

  def show
   
  end
  
  

  def new
    
  end
  
  

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Object successfully created"
      redirect_to @user
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end
  
  

  def edit
    
  end
  

  def update
    
  end
  
end
