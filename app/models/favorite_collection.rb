class FavoriteCollection < ActiveRecord::Base
  validates_presence_of :customer_id, :collection_id
  belongs_to :customer
  belongs_to :collection
end
