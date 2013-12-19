require 'spec_helper'

describe Piece do
  let(:piece_bought) { FactoryGirl.create(:piece, customer_id)}

  it { should have_valid(:artist) }

  it { should have_valid(:price).when(nil, 3000000, 125, 0) }
  it { should_not have_valid(:price).when(-100, 'price') }

  it 'should not be available if it has a customer who bought it' do
    if customer_id
  end
end