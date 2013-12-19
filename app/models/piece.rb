class Piece < ActiveRecord::Base
  belongs_to :artist
  belongs_to :collection
  belongs_to :customer

  validates_presence_of :artist_id, :name
  validates :price_in_cents, numericality: { greater_than_or_equal_to: 0, allow_blank: true }

  def buy_piece(customer)
    self.customer_id = customer.id
    self.available = false
  end
end
