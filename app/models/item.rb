class Item < ApplicationRecord
  has_many :join_table_cart_items
  has_many :carts, through: :join_table_cart_items
  # validates :category, presence: true
  # has_many :users, through: :carts

  # has_many :carts

  def index
    @item = Item.all
  end

  
  
end
