class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:secret]
  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
