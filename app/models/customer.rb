class Customer < ActiveRecord::Base
  validates_presence_of :name

  has_many :pieces
  has_many :favorite_collections

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, :uniqueness => { :case_sensitive => false}

  VALID_PHONE_REGEX = /\A\d{10}\z/
  validates :phone_no, presence: true, format: { with: VALID_PHONE_REGEX}

  def calc_total_spent_in_cents
    self.total_spent_in_cents = 0
    pieces.each do |piece|
      self.total_spent_in_cents += piece.price_in_cents
    end
    self.total_spent_in_cents
  end
end
