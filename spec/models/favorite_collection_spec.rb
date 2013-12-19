require 'spec_helper'

describe FavoriteCollection do
  it { should validate_presence_of(:customer_id) }
  it { should validate_presence_of(:collection_id) }

  it { should belong_to(:customer) }
  it { should belong_to(:collection)}  
end