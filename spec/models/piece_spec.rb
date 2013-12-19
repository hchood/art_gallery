require 'spec_helper'

describe Piece do
  # let(:piece_bought) { FactoryGirl.create(:piece, customer_id)}

  it { should have_valid(:artist) }
  it { should have_valid(:name) }

  it { should have_valid(:price_in_cents).when(nil, 3000000, 125, 0) }
  it { should_not have_valid(:price_in_cents).when(-100) }

  it 'should not be available if it has a customer who bought it' do
    piece = Piece.create(artist_id: 2, name: 'My Art', customer_id: 4)
    if piece.customer_id != nil
      expect(piece.available).to be_false
    end
  end
end