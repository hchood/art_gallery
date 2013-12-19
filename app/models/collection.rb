class Collection < ActiveRecord::Base
  validates_presence_of :name
  has_many :pieces
  has_many :favorite_collections
end
