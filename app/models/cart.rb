class Cart < ApplicationRecord
  belongs_to :user, foreign_key: true 
end
