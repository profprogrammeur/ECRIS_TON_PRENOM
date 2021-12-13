class Item < ApplicationRecord

  validates :category, presence: true

  def index
    @item = Item.all
  end

  
  
end
