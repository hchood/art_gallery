class Piece < ActiveRecord::Base
belongs_to :artist
belongs_to :collection
belongs_to :customer

validates_presence_of :name, :price_in_cents, :style


end
