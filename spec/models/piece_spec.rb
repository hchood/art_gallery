require 'spec_helper'

describe Piece do
  # let(:piece_bought) { FactoryGirl.create(:piece, customer_id)}

  it { should validate_presence_of(:artist_id) }
  it { should have_valid(:name).when('Davieee') }
  it { should_not have_valid(:name).when(nil, '')}

  it { should have_valid(:price_in_cents).when('', 3000000, 125, 0) }
  it { should_not have_valid(:price_in_cents).when(-100) }

  it 'should not be available if it has a customer who bought it' do
    piece = Piece.create(artist_id: 2, name: 'My Art')
    customer = FactoryGirl.create(:customer)
    piece.buy_piece(customer)
    expect(piece.available).to be_false
    expect(piece.customer_id).to eq(customer.id)
  end
end