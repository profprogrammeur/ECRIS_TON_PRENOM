class UserController < ApplicationController
  before_action :authenticate_user!, only: [:secret]
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:user.:id => true])
  end
  

  def new
    @user = User.new
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
    @user = User.find(params[:user.:id => true])
  end
  

  def update
  end
end
