class Item < ApplicationRecord
  has_many :carts 
  validates :category, presence: true

  def index
    @item = Item.all
  end

  
  
end
