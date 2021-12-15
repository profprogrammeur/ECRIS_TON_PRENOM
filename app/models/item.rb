class Item < ApplicationRecord
  has_many :joinTableCartItem
  has_many :carts, through: :joinTableCartItem


  


  
  
end
