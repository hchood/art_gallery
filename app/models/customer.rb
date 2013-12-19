class Customer < ActiveRecord::Base
 validates_presence_of :name
 
 has_many :pieces
 has_many :favorite_collections

 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
 validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, :uniqueness => { :case_sensitive => false}

 VALID_PHONE_REGEX = /\A\d{10}\z/
 validates :phone_no, presence: true, format: { with: VALID_PHONE_REGEX}

#  def total_spent_in_cents
#   total_spent = 0
#   pieces.each do |piece|
#     total_spent += piece.price_in_cents
#   end
#   total_spent
#  end
end
