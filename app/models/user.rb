class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         after_create :welcome_send
  belongs_to :product, foreign_key: "product_id"
  has_many :cart 
  has_many :games
  
  
    def welcome_send
      UserMailer.welcome_email(self).deliver_now
     end 
end
